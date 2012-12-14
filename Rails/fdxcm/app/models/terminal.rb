class Terminal < ActiveRecord::Base
  attr_accessible :colocationBoolean, :contractorTerminalName, :contractorTerminalNumber, :fedexTerminalName, :fedexTerminalNumber

	belongs_to :regions

  has_many :notes, :as => :notable
end