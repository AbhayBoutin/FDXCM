class DailyDataVehicle < ActiveRecord::Base
  belongs_to :vehicle
  # attr_accessible :title, :body

  belongs_to :dailyDatum

	has_many :notes, :as => :notable

end