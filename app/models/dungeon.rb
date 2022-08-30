class Dungeon < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
  validates :price, presence: true
  validates :description, presence: true
  validates :guests, presence: true
  validates :dragon, presence: true
end
