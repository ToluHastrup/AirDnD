class CreateDungeons < ActiveRecord::Migration[7.0]
  def change
    create_table :dungeons do |t|
      t.string :name
      t.text :address
      t.integer :price
      t.text :description
      t.integer :guests
      t.boolean :dragon
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
