def expects(symbol) 
  method = stubba_method.new(stubba_object, symbol)
  Mocha::Mockery.instance.stubba.stub(method)
  mocha.expects(symbol, caller)
end
