class EmployeePay < ActiveRecord::Base
  belongs_to :employee
  attr_accessible :endDate, :startDate

  belongs_to :pay
end
