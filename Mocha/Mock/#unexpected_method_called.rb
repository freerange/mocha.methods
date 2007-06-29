def unexpected_method_called(symbol, *arguments)
  MissingExpectation.new(self, symbol).with(*arguments).verify
end
