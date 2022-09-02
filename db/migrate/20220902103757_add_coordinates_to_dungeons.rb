class AddCoordinatesToDungeons < ActiveRecord::Migration[7.0]
  def change
    add_column :dungeons, :latitude, :float
    add_column :dungeons, :longitude, :float
  end
end
