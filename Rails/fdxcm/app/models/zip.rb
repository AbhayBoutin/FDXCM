class Zip < ActiveRecord::Base
  belongs_to :psa
  attr_accessible :zip
end
