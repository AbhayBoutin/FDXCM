class Addendum < ActiveRecord::Base
  attr_accessible :content, :endDate, :fedexAddendumName, :fedexAddendumNumber, :fedexContractorAddendumName, :fedexContractorAddendumNumber, :startDate

  belongs_to :fedexContract
	has_many :notes, :as => :notable
end
