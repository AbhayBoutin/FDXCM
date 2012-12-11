class VehicleOdometer < ActiveRecord::Base
  attr_accessible :endDate, :odometerReading, :startDate
end
