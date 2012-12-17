class EmployeePay < ActiveRecord::Base
  belongs_to :employee
  attr_accessible :endDate, :startDate
end
