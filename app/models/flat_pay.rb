class FlatPay < ActiveRecord::Base
  belongs_to :frequency
  attr_accessible :activeBoolean, :endTime, :payAmount, :startDate

  belongs_to :flatPay
	belongs_to :productionPay

	has_many :employees, :through => :payProfile
	has_many :payProfiles
end
