class DailyDataDeliveryException < ActiveRecord::Base
  belongs_to :dailyData
  belongs_to :deliveryException
  attr_accessible :endDate, :startDate

	has_many :notes, :as => :notable
end
