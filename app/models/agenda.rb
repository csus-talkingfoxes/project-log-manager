class Agenda < ActiveRecord::Base
  belongs_to :user
  has_many :agenda_items
  validates_presence_of :user

  def to_s
    "Agenda: #{start.strftime('%a %d %b')}"
  end
end
