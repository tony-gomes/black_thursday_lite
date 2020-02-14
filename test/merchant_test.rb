require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/merchant'

class MerchantTest < MiniTest::Test
  def setup
    @merchant = Merchant.new({
      :id => 5,
      :name => "Turing School"
    })
  end

  def test_it_exists
    assert_instance_of Merchant, @merchant
  end

  def test_it_has_data_points
    assert_equal 5, @merchant.id
    assert_equal "Turing School", @merchant.name
  end
end
