require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    #Arrange necessary preconditions and inputs
    @u = FactoryGirl.create(:user)
  end

  test "must have a name" do
    @u.name = ""
    refute @u.valid?
  end

  test "must have password and confirmation on create"
    @u.password = ""
    refute @u.valid?
  end

  test "can be created with a password and confirmation"
    @u.password = "something"
    assert @u.valid?
  end

  test "confirmation must match password"
    @u.password_confirmation = "something"
    assert_equal "something"
  end

  test "email must be unique"
    @u.email = "hello@world.com"
    assert @u.valid?
  end
end