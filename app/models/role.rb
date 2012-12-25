class Role < ActiveRecord::Base
  attr_accessible :name

	has_many :userRoles
	has_many :users, :through => :userRoles

  def roleName
    self.name
  end

end
