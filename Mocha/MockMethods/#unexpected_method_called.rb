	def unexpected_method_called(symbol, *arguments)
    MissingExpectation.new(symbol, self, expectations).with(*arguments).verify
  end
