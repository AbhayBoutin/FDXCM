class State < ActiveRecord::Base
  belongs_to :psa
  attr_accessible :abbreviation, :state

  has_many:psaStates
end
