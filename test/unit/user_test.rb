require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save without name" do
    user = User.new
    user.email = "test@test.com"
    user.password = "test"
    user.password_confirmation = "test"
    assert_raise(ActiveRecord::StatementInvalid) { user.save }
  end
  test "should not save without confirm" do
    user = User.new
    user.username = "test1"
    user.email = "test1@email.com"
    user.password = "abcd"
    user.password_confirmation = "qwerty"
    assert !user.save
  end
  test "should save valid user" do
    user = User.new
    user.username = "test1"
    user.email = "test1@email.com"
    user.password = "abcd"
    user.password_confirmation = "abcd"
    assert user.save
  end
end
