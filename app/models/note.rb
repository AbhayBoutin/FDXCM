class Note < ActiveRecord::Base
  attr_accessible :content, :endDate, :notable_id, :notable_type, :startDate
end
