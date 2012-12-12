class Psa < ActiveRecord::Base
  attr_accessible :activeBoolean, :contractorPSAName, :contractorPSANumber, :endDate, :fedexPSAName, :fedexPSANumber, :startDate


	has_many :psazips
	has_many :zips, :through => :psazips

	has_many :psaStates
	has_many :states, :through => :psaStates
end
