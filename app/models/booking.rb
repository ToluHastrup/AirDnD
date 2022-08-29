class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dungeon
end
