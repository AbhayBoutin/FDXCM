class State < ActiveRecord::Base
  attr_accessible :abbreviation, :state

  has_many:psaStates
  has_many:states, :through => :psaStates
end
