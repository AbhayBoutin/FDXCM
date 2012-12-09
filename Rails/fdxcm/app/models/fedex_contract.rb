class FedexContract < ActiveRecord::Base
  attr_accessible :content, :contractorContractName, :contractorContractNumber, :endDate, :fedexContractName, :fedexContractNumber, :startDate
end
