class Vehicle < ActiveRecord::Base
  attr_accessible :activeBoolean, :contractorName, :contractorNumber, :endDate, :fedexVehicleName, :fedexVehicleNumber, :startDate, :vin
end
