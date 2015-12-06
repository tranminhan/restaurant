class MenuController < ApplicationController
  def index
  end

  def contact_us
  end

  def section
    # debugger    
    return @items = MenuItem.where("section like ?", params[:section]).sort_by {|x| -x.avg_review} if params[:sort] == "rating"
    @items = MenuItem.where("section like ?", params[:section]).order(params[:sort])
    # debugger
  end 

  def item
    @item = MenuItem.find(params[:id])
  end 

  def add
    session[:purchase] ||= []
    session[:purchase] << MenuItem.find(params[:id])
    # debugger
    redirect_to cart_url
  end 

  def remove
    session[:purchase] ||= []
    session[:purchase].delete_at(params[:index].to_i)
    # debugger
    redirect_to cart_url
  end 

  def cart
    @total = order_subtotal
  end

  def order 
    session[:address] = params[:address]
    redirect_to thank_you_url
  end

  def review
    @item = MenuItem.find(params[:review][:item_id])
    @item.reviews << Review.new(username: params[:review][:username], star: params[:review][:star], comment: params[:review][:comment])
    @item.save!
    debugger
    redirect_to item_url(@item)
  end

  # TODO clear session after thank you
  def thank_you
    # debugger
    @order_date = DateTime.now
    @shipping   = 20000
    @total      = order_subtotal + @shipping
    order = {
      "total" => @total,
      "shipping" => @shipping,
      "items" => session[:purchase]
    }
    # debugger
    OrderMailer.order_confirmation(session[:address], order).deliver_now
  end

  def order_subtotal
    session[:purchase].inject(0){ |sum, e| sum += e['price'].to_f }
  end 
end
