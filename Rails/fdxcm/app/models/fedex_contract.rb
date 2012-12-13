class FedexContract < ActiveRecord::Base
  attr_accessible :content, :contractorContractName, :contractorContractNumber, :endDate, :fedexContractName, :fedexContractNumber, :startDate

	has_many :Businesses
end
