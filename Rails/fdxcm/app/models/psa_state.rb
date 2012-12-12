class PsaState < ActiveRecord::Base
  belongs_to :psa
  belongs_to :state
  # attr_accessible :title, :body
end
