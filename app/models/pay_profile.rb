class PayProfile < ActiveRecord::Base
  belongs_to :employee
  attr_accessible :profileName
end
