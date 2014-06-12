class Hotel < ActiveRecord::Base
  belongs_to :country
  has_many :bookings, dependent: :destroy
end
