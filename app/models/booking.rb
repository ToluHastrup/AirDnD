class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dungeon

  validates :start_date, presence: true, uniqueness: true
  validates :end_date, presence: true, uniqueness: true
end
