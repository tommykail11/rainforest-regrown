require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  setup do
    @r = FactoryGirl.create(:review)
  end

  test "requires a user" do
    @r.user = ""
    refute @r.valid?
  end

  test "requires a comment" do
    @r.comment ""
    refute @r.valid?
  end
end