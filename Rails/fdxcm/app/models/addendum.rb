class Addendum < ActiveRecord::Base
  attr_accessible :content, :endDate, :fedexAddendumName, :fedexAddendumNumber, :fedexContractorAddendumName, :fedexContractorAddendumNumber, :startDate
end
