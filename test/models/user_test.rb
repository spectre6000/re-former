require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new( username: "Jimbob", email: "jimbob@email.com", password: "hephalump")
  end

  test "should be valid" do 
    assert @user.valid?
  end

  test "invalid without username" do
    @user.username = ""

    assert_not @user.valid?
  end

  test "invalid without email" do
    @user.email = ""

    assert_not @user.valid?
  end

  test "invalid without password" do
    @user.password = ""

    assert_not @user.valid?
  end
end
