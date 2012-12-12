class DailyDatum < ActiveRecord::Base
  attr_accessible :calltag, :deliveryPackage, :deliveryStop, :didNotAttempt, :earlyPickUp, :endTime, :inboundLocalService, :latePickUp, :pickupPackage, :pickupStop, :startTime

  has_many :notes, :as => :notable

  has_many :dailyDataVehicles
	has_many :vehicles, :through => :dailyDataVehicles 

	has_many :dailyDataEmployees
	has_many :employees, :through => :dailyDataEmployees
end
