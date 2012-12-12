class Psazip < ActiveRecord::Base
  belongs_to :psa
  belongs_to :zip
  # attr_accessible :title, :body
end
