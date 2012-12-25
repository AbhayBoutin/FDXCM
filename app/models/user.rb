class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  belongs_to :employee
  attr_accessible :activeBoolean, :contractorBoolean

  has_many :userRoles
  has_many :roles, :through => :userRoles

  def thisUsersBusiness
    self.employee.business
  end

  def thisUsersBusinessPsas
    self.thisUsersBusiness.psas
  end

  def thisUsersBusinessEmployees
    self.thisUsersBusiness.employees
  end

  def thisUsersUserRole
    arrayOfUserRoles = []
    self.userRoles.each do |ur|
      arrayOfUserRoles << { "id" => ur.role_id, "name" => ur.roleName }
    end
    role_hash_with_smallest_id = arrayOfUserRoles.min_by {|role_hash| role_hash['id']}
    role_hash_with_smallest_id['name']

  end

  def has_role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
  end

end