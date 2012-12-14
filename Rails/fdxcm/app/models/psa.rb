class Psa < ActiveRecord::Base
  attr_accessible :activeBoolean, :contractorPSAName, :contractorPSANumber, :endDate, :fedexPSAName, :fedexPSANumber, :startDate

	has_many :notes, :as => :notable

	belongs_to :regions
	belongs_to :businesses

	has_many :psazips
	has_many :zips, :through => :psazips

	has_many :psaStates
	has_many :states, :through => :psaStates

	has_many :employeePsas
	has_many :employees, :through => :employeePsas
end
