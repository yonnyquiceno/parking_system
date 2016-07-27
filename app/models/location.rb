class Location < ActiveRecord::Base
  has_many :slots
  geocoded_by :address # can also be an IP address
  after_validation :geocode, if: ->(obj) {obj.address.present? && obj.address_changed?}
  reverse_geocoded_by :latitude, :longitude
end
