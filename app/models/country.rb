class Country < ActiveRecord::Base
  has_many :hotels, dependent: :destroy
  has_many :flights, :foreign_key => :to_country_id, dependent: :destroy
  has_many :flights, :foreign_key => :from_country_id, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
