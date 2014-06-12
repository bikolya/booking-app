class Booking < ActiveRecord::Base
  belongs_to :country
  belongs_to :flight
  belongs_to :hotel
end
