def test_should_calculate_shipping_cost_based_on_total_weight
  order = Order.new
  order.stubs(:total_weight).returns(10)
  assert_equal 60, order.shipping_cost
end
