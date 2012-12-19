class DeliveryException < ActiveRecord::Base
  attr_accessible :exceptionDescription, :exceptionType

	has_many :dailyDataDeliveryExceptions
	has_many :dailyDatum, :through => :dailyDataDeliveryExceptions
end
