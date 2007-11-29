def test_mocking_an_instance_method_on_a_real_object
  product = Product.new
  product.expects(:save).returns(true)
  assert product.save
end
