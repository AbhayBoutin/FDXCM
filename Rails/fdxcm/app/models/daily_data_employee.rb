class DailyDataEmployee < ActiveRecord::Base
  belongs_to :employee
  belongs_to :dailyDatum
  # attr_accessible :title, :body

	has_many :notes, :as => :notable

end