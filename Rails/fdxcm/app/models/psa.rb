class Psa < ActiveRecord::Base
  attr_accessible :activeBoolean, :contractorPSAName, :contractorPSANumber, :endDate, :fedexPSAName, :fedexPSANumber, :startDate
end
