class Region < ActiveRecord::Base
  attr_accessible :contractorRegionName, :contractorRegionNumber, :fedexRegionName, :fedexRegionNumber, :fedexRegionPhone

  has_many :psas
  has_many :terminals

end
