def expects(expected_methods_vs_return_values)
  if expected_methods_vs_return_values.to_s =~ /the[^a-z]*spanish[^a-z]*inquisition/i
    raise Mocha::ExpectationError.new('NOBODY EXPECTS THE SPANISH INQUISITION!')
  end
  if frozen?
    raise StubbingError.new("can't stub method on frozen object: #{mocha_inspect}", caller)
  end
  expectation = nil
  mockery = Mocha::Mockery.instance
  iterator = ArgumentIterator.new(expected_methods_vs_return_values)
  iterator.each { |*args|
    method_name = args.shift
    mockery.on_stubbing(self, method_name)
    method = stubba_method.new(stubba_object, method_name)
    mockery.stubba.stub(method)
    expectation = mocha.expects(method_name, caller)
    expectation.returns(args.shift) if args.length > 0
  }
  expectation
end
