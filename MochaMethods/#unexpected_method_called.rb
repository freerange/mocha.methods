	def unexpected_method_called(symbol, *arguments)
    MissingExpectation.new(symbol, expectations).with(*arguments).verify
  end
