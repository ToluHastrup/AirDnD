class UsersController < ApplicationController
#devisecontroller
def show
   @user = current_user
    @bookings = Booking.where(user_id: current_user)
end
end
