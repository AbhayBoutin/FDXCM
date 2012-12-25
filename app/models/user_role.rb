class UserRole < ActiveRecord::Base
  belongs_to :user
  belongs_to :role
  # attr_accessible :title, :body

  def roleName
    self.role.name
  end

end