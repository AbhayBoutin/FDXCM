class EmployeeTerminal < ActiveRecord::Base
  belongs_to :employee
  belongs_to :terminal
  attr_accessible :activeBoolean, :endDate, :startDate
end
