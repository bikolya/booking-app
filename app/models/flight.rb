class Flight < ActiveRecord::Base
  belongs_to :country, :foreign_key => :to_country_id
  belongs_to :country, :foreign_key => :from_country_id
  has_many :bookings, dependent: :destroy
end
