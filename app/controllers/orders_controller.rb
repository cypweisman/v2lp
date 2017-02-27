class OrdersController < ApplicationController

  def index
    if params[:search]
      @orders = Order.movie_search(params[:search])
    else
      @orders = Order.all
    end
  end

  def new
    @order = Order.new
    @showtime = Showtime.find(params[:showtime])
    render :new
  end

  def create
    @showtime = Showtime.find(order_params[:showtime_id])
    @order = Order.new(order_params)
    if @order.save
      @order.update_tickets_sold
      OrderMailer.order_confirmation(@order).deliver
      redirect_to movies_path
    else
      @errors = @order.errors.full_messages
      render :new
    end
  end

  def order_params
    params.require(:order).permit(:name, :email, :credit_card, :expiration, :total, :showtime_id)
  end

end
