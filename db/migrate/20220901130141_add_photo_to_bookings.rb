class AddPhotoToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :photo, :string
  end
end
