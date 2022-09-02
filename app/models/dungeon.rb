class Dungeon < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
  validates :price, presence: true
  validates :description, presence: true
  validates :guests, presence: true
  validates :dragon, presence: true
end
