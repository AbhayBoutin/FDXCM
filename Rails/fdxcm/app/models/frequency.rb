class Frequency < ActiveRecord::Base
  attr_accessible :endDate, :frequencyInterval, :startDate

	has_many :flatPays
end
