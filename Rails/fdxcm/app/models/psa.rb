class Psa < ActiveRecord::Base
  attr_accessible :activeBoolean, :contractorPSAName, :contractorPSANumber, :endDate, :fedexPSAName, :fedexPSANumber, :startDate


	has_many :psaZIPs
	has_many :zips, :through => :psaZIPS

	has_many :psaStates
	has_many :states, :through => :psaStates
end
