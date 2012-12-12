class Vehicle < ActiveRecord::Base
  belongs_to :vehicleType
  belongs_to :vehicleFuel
  belongs_to :vehicleOdometer
  attr_accessible :activeBoolean, :contractorName, :contractorNumber, :endDate, :fedexVehicleName, :fedexVehicleNumber, :startDate, :vin
end
