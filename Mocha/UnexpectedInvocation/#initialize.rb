def initialize(mock, symbol, *arguments)
  @mock = mock
  @method_matcher = MethodMatcher.new(symbol)
  @parameters_matcher = ParametersMatcher.new(arguments)
end
