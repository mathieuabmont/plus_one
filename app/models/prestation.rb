class Prestation < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :location_changed?

  gradiant_red = 'linear-gradient(-90deg, #FF0108, #FF4F61);'
  gradiant_blue = 'linear-gradient(-90deg, #26A8D5, #2ED2D7);'
  gradiant_green = 'linear-gradient(-90deg, #00A2A8, #04ECCA);'
  gradiant_purple = 'linear-gradient(-90deg, #714FBE, #B15AA1);'
  COLORS = [gradiant_red, gradiant_purple, gradiant_green, gradiant_blue]

  belongs_to :user
  has_many :bookings
end
