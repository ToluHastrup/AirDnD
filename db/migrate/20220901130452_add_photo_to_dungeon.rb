class AddPhotoToDungeon < ActiveRecord::Migration[7.0]
  def change
    add_column :dungeons, :photo, :string
  end
end
