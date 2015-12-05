class OrderMailer < ApplicationMailer
  add_template_helper(ApplicationHelper)

  def order_confirmation(contact, order)
    @contact = contact
    @order = order
    mail(to: @contact['email'], subject: "Order Confirmation")
  end
end
