class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dungeon

  validates :dates, presence: true, uniqueness: true
end
