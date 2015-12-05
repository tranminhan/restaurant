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
end
