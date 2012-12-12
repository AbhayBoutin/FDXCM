class Employee < ActiveRecord::Base
  attr_accessible :activeBoolean, :contractorNumber, :dateOfBirth, :endDate, :fedexNumber, :firstName, :hireDate, :lastName, :startDate, :terminationDate

	has_many :notes, :as => :notable
	has_one :user
end
