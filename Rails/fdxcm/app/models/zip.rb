class Zip < ActiveRecord::Base
  belongs_to :psa
  attr_accessible :zip

  has_many:psazips
end
