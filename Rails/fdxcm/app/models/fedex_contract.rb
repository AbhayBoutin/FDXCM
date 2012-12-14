class FedexContract < ActiveRecord::Base
  attr_accessible :content, :contractorContractName, :contractorContractNumber, :endDate, :fedexContractName, :fedexContractNumber, :startDate

	has_many :businesses
  has_many :addendums

	has_many :notes, :as => :notable

end
