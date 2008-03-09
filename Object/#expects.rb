def expects(symbol)
  mockery = Mocha::Mockery.instance
  mockery.on_stubbing(self, symbol)
  method = stubba_method.new(stubba_object, symbol)
  mockery.stubba.stub(method)
  mocha.expects(symbol, caller)
end
