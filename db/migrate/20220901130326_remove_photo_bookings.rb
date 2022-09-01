class RemovePhotoBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :photo
  end
end
