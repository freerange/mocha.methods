def initialize(mock, expected_method_name, backtrace = nil)
  @mock = mock
  @method_matcher = MethodMatcher.new(expected_method_name)
  @parameters_matcher = ParametersMatcher.new
  @ordering_constraints = []
  @side_effects = []
  @cardinality, @invocation_count = Cardinality.exactly(1), 0
  @return_values = ReturnValues.new
  @yield_parameters = YieldParameters.new
  @backtrace = backtrace || caller
end
