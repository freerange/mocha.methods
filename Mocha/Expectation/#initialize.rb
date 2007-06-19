def initialize(mock, method_name, backtrace = nil)
  @mock, @method_name = mock, method_name
  @expected_count = 1
  @parameters, @parameter_block = AlwaysEqual.new, nil
  @invoked_count, @return_values = 0, ReturnValues.new
  @backtrace = backtrace || caller
  @yield_parameters = YieldParameters.new
  @final_expectation = false
end
