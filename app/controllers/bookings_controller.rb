class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end


  def new
    @booking = Booking.new
    @dungeon = Dungeon.find(params[:dungeon_id])
  end

  def create
    @dungeon = Dungeon.find(params[:dungeon_id])
    @booking = Booking.new(booking_params)
    @booking.dungeon = @dungeon
    @booking.user = current_user
    if @booking.save
      redirect_to dungeon_path(@dungeon)
    else
      raise
      render 'new', status: :unprocessable_entity
    end
  end
  private

  def booking_params
    params.require(:booking).permit(:dates, :user_id)
  end
end
