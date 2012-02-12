class AgendaCheckin < ActiveRecord::Base
  belongs_to :user
  belongs_to :agenda
end
