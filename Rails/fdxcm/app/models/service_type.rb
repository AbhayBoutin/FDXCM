class ServiceType < ActiveRecord::Base
  attr_accessible :endDate, :serviceType, :startDate

  has_many :vehicles
  has_many :psas
end
