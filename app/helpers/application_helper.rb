module ApplicationHelper

  def vnd(amount)
    number_to_currency(amount, :unit => " VND", :delimiter => ",", precision: 0, format: "%n %u")
  end 

  def pretty_time(time) 
    time.strftime "%a, %b %d %Y, %H:%M"
  end 

end
