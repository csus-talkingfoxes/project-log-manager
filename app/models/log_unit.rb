class LogUnit < ActiveRecord::Base
  belongs_to :user
  validates_associated :user
  validates :description, :length => {
    :minimum => 10,
    :tokenizer => lambda { |str| str.scan(/\w+/) },
    :too_short => "Description must be %{count} words"
  }
  validates :start, :end, :description, :presence => true

end
