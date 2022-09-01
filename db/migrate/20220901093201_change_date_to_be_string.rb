class ChangeDateToBeString < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :dates, :string
  end
end
