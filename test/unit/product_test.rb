require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  setup do
    @p = FactoryGirl.create(:product)
  end

  test "must have a name" do
    # @p is defined in the setup do block
    # assigning the name of @p to be blank
    @p.name = ""
    # because in models/product.rb, presence of name must be is true
    # so it is not going to pass validations
    refute @p.valid? 
    # refute and assert are the opposite
    # assert false that would fail the test
    # refute false means the test passes
  end

  test "must have a description" do
    @p.description = ""
    refute @p.valid?
  end

  test "must have a price" do
    @p.price = ""
    refute @p.valid?
  end

  test "price must be an integer" do
    @p.price = 5
    assert @p.valid?
  end

  test "formatted price" do
    @p.price = 20.00
    assert @p.valid?
  end  
end
