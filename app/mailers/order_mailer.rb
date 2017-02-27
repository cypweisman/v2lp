class OrderMailer < ApplicationMailer
  default from: "cy@lp.com"

  def order_confirmation(order)
    @order = order

    mail to: order.email, subject: "Order Confirmation"
  end
end
