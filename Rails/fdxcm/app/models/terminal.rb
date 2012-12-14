class Terminal < ActiveRecord::Base
  attr_accessible :colocationBoolean, :contractorTerminalName, :contractorTerminalNumber, :fedexTerminalName, :fedexTerminalNumber

	belongs_to :regions

  has_many :notes, :as => :notable

	has_many :employeeTerminals
	has_many :employees, :through => :employeeTerminals
end