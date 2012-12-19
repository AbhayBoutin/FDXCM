class Employee < ActiveRecord::Base
  attr_accessible :activeBoolean, :contractorNumber, :dateOfBirth, :endDate, :fedexNumber, :firstName, :hireDate, :lastName, :startDate, :terminationDate

	has_many :notes, :as => :notable

	has_one :user

	has_many :dailyDataEmployees
	has_many :dailyData, :through => :dailyDataEmployees

	belongs_to :business

	has_many :employeePsas
	has_many :psas, :through => :employeePsas

	has_many :employeeTerminals
	has_many :terminals, :through => :employeeTerminals

	has_many :employee_manager_assignments
	has_many :managers, :through => :employee_manager_assignments
	has_many :subordinate_relationships, :class_name=>"EmployeeManagerAssignment", :foreign_key=>"manager_id"
	has_many :subordinates, :through => :subordinate_relationships, :source=>:employee

	has_many :employeePays
	has_many :pays, :through => :employeePay

	has_many :payProfiles
	has_many :flatPays, :through => :payProfile
	has_many :productionPays, :through => :payProfile

	has_paper_trail
end
