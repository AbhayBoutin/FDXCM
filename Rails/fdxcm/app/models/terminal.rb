class Terminal < ActiveRecord::Base
  attr_accessible :colocationBoolean, :contractorTerminalName, :contractorTerminalNumber, :fedexTerminalName, :fedexTerminalNumber

  has_many :notes, :as => :notable
end
