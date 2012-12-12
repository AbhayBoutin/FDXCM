class DailyDatum < ActiveRecord::Base
  attr_accessible :calltag, :deliveryPackage, :deliveryStop, :didNotAttempt, :earlyPickUp, :endTime, :inboundLocalService, :latePickUp, :pickupPackage, :pickupStop, :startTime

  has_many :dailyDataVehicles
	has_many :vehicles, :through => :dailyDataVehicles 
end
