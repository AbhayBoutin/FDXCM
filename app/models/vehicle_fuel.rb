class VehicleFuel < ActiveRecord::Base
  attr_accessible :fuelTankSize, :fuelType, :mpg

  has_many:vehicles
end
