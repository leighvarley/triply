class Location < ActiveRecord::Base
  has_many :recommendations
end
