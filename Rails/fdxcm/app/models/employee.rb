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
end
