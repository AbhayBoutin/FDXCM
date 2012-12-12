class Zip < ActiveRecord::Base
  attr_accessible :zip

  has_many:psazips
  has_many:psas, :through => :psazips
end
