class RemovePhotoFromDungeons < ActiveRecord::Migration[7.0]
  def change
    remove_column :dungeons, :photo, :string
  end
end
