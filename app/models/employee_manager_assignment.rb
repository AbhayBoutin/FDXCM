class EmployeeManagerAssignment < ActiveRecord::Base
  belongs_to :employee
  attr_accessible :activeBoolean, :endDate, :startDate

belongs_to :manager, :class_name=>"Employee"
end
