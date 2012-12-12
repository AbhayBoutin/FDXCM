class VehicleOdometer < ActiveRecord::Base
  attr_accessible :endDate, :odometerReading, :startDate

	has_many:vehicles
end
