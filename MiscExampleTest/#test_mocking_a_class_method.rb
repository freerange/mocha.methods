def test_mocking_a_class_method
  product = Product.new
  Product.expects(:find).with(1).returns(product)
  assert_equal product, Product.find(1)
end
