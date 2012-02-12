class AgendaType < ActiveRecord::Base
  validates_presence_of :typestring
  def to_s
    "#{typestring}"
  end
end
