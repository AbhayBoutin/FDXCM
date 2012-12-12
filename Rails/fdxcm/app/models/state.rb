class State < ActiveRecord::Base
  has_many:psaStates
  attr_accessible :abbreviation, :state

	has_many:states, :through => :psaStates
end
