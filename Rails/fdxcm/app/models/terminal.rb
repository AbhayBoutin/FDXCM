class Terminal < ActiveRecord::Base
  attr_accessible :colocationBoolean, :contractorTerminalName, :contractorTerminalNumber, :fedexTerminalName, :fedexTerminalNumber
end
