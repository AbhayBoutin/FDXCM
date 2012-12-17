class Pay < ActiveRecord::Base
  attr_accessible :amount, :datetime

  has_many :employeePays
	has_many :employees, :through => :employeePay
end
