class Addendum < ActiveRecord::Base
  attr_accessible :content, :endDate, :fedexAddendumName, :fedexAddendumNumber, :fedexContractorAddendumName, :fedexContractorAddendumNumber, :startDate

	has_many :notes, :as => :notable

  belongs_to :fedexContract
end
