require 'test_helper'

class LogUnitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "creating a log unit entry" do
    log = LogUnit.new
    log.user = User.first
    log.start = DateTime.civil(2007, 12, 4, 0, 0, 0, 0)
    log.end = DateTime.civil(2007, 12, 4, 0, 1, 0, 0)
    log.description = "Did some stuff. This is a long description and must be 10 words long"
    assert log.save
  end
end
