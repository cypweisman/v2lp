class AuditoriaController < ApplicationController

  def new
    @auditorium = Auditorium.new
    render :new
  end

  def create
   @auditorium = Auditorium.new(auditorium_params)
    if @auditorium.save
      redirect_to showtimes_path
    else
      @errors = @auditorium.errors.full_messages
      render :new
    end
  end

  def auditorium_params
    params.require(:auditorium).permit(:room, :capacity)
  end

end
