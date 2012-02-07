class AgendaItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :agenda

  def to_s
    "#{item}"
  end
end
