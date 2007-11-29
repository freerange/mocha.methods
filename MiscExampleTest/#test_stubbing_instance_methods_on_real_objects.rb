def test_stubbing_instance_methods_on_real_objects
  prices = [stub(:pence => 1000), stub(:pence => 2000)]
  product = Product.new
  product.stubs(:prices).returns(prices)
  assert_equal [1000, 2000], product.prices.collect {|p| p.pence}
end
