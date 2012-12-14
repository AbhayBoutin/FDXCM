class Role < ActiveRecord::Base
  attr_accessible :name

	has_many :userRoles
	has_many :roles, :through => :userRoles
end
