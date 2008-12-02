def expects(method_name_or_hash)
  expectation = nil
  mockery = Mocha::Mockery.instance
  iterator = ArgumentIterator.new(method_name_or_hash)
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
