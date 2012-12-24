class Business < ActiveRecord::Base
  belongs_to :fedexContract
  attr_accessible :address, :city, :country, :name, :state, :taxIDNumber, :zip

	has_many :notes, :as => :notable

  has_many :psas
  has_many :employees
  has_many :vehicles

  def thisBusinesssEmployees
    self.employees
  end

end
