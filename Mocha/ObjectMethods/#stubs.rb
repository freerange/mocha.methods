def stubs(stubbed_methods_vs_return_values)
  expectation = nil
  mockery = Mocha::Mockery.instance
  iterator = ArgumentIterator.new(stubbed_methods_vs_return_values)
  iterator.each { |*args|
    method_name = args.shift
    mockery.on_stubbing(self, method_name)
    method = stubba_method.new(stubba_object, method_name)
    mockery.stubba.stub(method)
    expectation = mocha.stubs(method_name, caller)
    expectation.returns(args.shift) if args.length > 0
  }
  expectation
end
