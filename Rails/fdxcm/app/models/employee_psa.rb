class EmployeePsa < ActiveRecord::Base
  belongs_to :employee
  belongs_to :psa
  attr_accessible :activeBoolean, :endDate, :startDate
end
