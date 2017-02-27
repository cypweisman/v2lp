class ShowtimesController < ApplicationController

  def index
    @showtimes = Showtime.all.order(:showdate)
    render :index
  end

  def new
    @showtime = Showtime.new
  end

  def create
   @showtime = Showtime.new(showtime_params)
    if @showtime.save
      redirect_to movies_path
    else
      @errors = @showtime.errors.full_messages
      render :new
    end
  end

  def destroy
    @showtime = Showtime.find(params[:showtime])
    @showtime.destroy
    redirect_to showtimes_path
  end

  def showtime_params
    params.require(:showtime).permit(:showdate, :start_time, :end_time, :price, :tickets_sold, :movie_id, :auditorium_id)
  end


end
