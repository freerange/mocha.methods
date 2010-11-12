def unstub(*method_names)
  mockery = Mocha::Mockery.instance
  method_names.each do |method_name|
    method = stubba_method.new(stubba_object, method_name)
    mockery.stubba.unstub(method)
  end
end
