class DailyDatum < ActiveRecord::Base
  belongs_to :vehicle
  attr_accessible :calltag, :deliveryPackage, :deliveryStop, :didNotAttempt, :earlyPickUp, :endTime, :inboundLocalService, :latePickUp, :pickupPackage, :pickupStop, :startTime
end
