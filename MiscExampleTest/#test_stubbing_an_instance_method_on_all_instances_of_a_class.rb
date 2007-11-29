def test_stubbing_an_instance_method_on_all_instances_of_a_class
  Product.any_instance.stubs(:name).returns('stubbed_name')
  product = Product.new
  assert_equal 'stubbed_name', product.name
end
