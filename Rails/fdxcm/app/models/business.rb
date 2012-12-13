class Business < ActiveRecord::Base
  belongs_to :fedexContract
  attr_accessible :address, :city, :country, :name, :state, :taxIDNumber, :zip
end
