class Vehicle < ActiveRecord::Base
  belongs_to :vehicleType
  belongs_to :vehicleFuel
  belongs_to :vehicleOdometer
  attr_accessible :activeBoolean, :contractorName, :contractorNumber, :endDate, :fedexVehicleName, :fedexVehicleNumber, :startDate, :vin

	has_many :notes, :as => :notable

  belongs_to :serviceType

	has_many :dailyDataVehicles
	has_many :dailyData, :through => :dailyDataVehicles  

  belongs_to :business
end
