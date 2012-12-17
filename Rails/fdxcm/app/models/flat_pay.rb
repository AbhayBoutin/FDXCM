class FlatPay < ActiveRecord::Base
  belongs_to :frequency
  attr_accessible :activeBoolean, :endTime, :payAmount, :startDate
end
