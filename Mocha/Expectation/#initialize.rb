def initialize(mock, expected_method_name, backtrace = nil)
  @mock = mock
  @method_matcher = MethodMatcher.new(expected_method_name)
  @parameters_matcher = ParametersMatcher.new
  @expected_count, @invoked_count = 1, 0
  @return_values = ReturnValues.new
  @yield_parameters = YieldParameters.new
  @backtrace = backtrace || caller
end
