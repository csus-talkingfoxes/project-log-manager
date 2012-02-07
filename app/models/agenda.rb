class Agenda < ActiveRecord::Base
  belongs_to :user
  has_many :agenda_items

  def to_s
    "Agenda: #{start.strftime('%a %d %b')}"
  end
end
