def test_should_count_number_of_orders_shipped_after_specified_date
  now = Time.now; week_in_secs = 7 * 24 * 60 * 60
  order_1 = Order.new; order_1.shipped_on = now - 1 * week_in_secs
  order_2 = Order.new; order_2.shipped_on = now - 3 * week_in_secs
  Order.stubs(:find_all).returns([order_1, order_2])
  assert_equal 1, Order.number_shipped_since(now - 2 * week_in_secs)
end
