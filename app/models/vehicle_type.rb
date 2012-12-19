class VehicleType < ActiveRecord::Base
  attr_accessible :bodyMake, :bodyModel, :bulkBoolean, :vehicleSize

  has_many:vehicles
end
