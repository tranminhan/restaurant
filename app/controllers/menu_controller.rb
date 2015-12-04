class MenuController < ApplicationController
  def index
  end

  def contact_us
  end

  def section
    @items = MenuItem.where("section like ?", params[:section])
    # debugger
  end 

  def item
    @item = MenuItem.find(params[:id])
  end 
end
