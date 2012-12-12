class User < ActiveRecord::Base
  belongs_to :employee
  attr_accessible :activeBoolean, :contractorBoolean

  has_many :userRoles
end
