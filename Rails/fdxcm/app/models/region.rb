class Region < ActiveRecord::Base
  attr_accessible :contractorRegionName, :contractorRegionNumber, :fedexRegionName, :fedexRegionNumber, :fedexRegionPhone
end
