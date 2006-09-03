def test_should_calculate_value_of_unshipped_orders
  Order.stubs(:find_all).returns([Order.new, Order.new, Order.new])
  Order.any_instance.stubs(:shipped_on).returns(nil)
  Order.any_instance.stubs(:total_cost).returns(10)
  assert_equal 30, Order.unshipped_value
end
