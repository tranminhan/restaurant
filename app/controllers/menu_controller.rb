class MenuController < ApplicationController
  def index
  end

  def contact_us
  end

  def section
    # debugger
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
    @total = session[:purchase].inject(0){ |sum, e| sum += e['price'].to_f }
  end

  def order 
    session[:address] = params[:address]
    redirect_to thank_you_url
  end

  def thank_you
    # debugger
    @order_date = DateTime.now
    @shipping   = 20000
    @total      = session[:purchase].inject(0){ |sum, e| sum += e['price'].to_f } + @shipping
  end
end
