def initialize(mock, method_name, backtrace = nil)
  @mock, @method_name = mock, method_name
  @parameters = Parameters.new
  @expected_count, @invoked_count = 1, 0
  @return_values = ReturnValues.new
  @yield_parameters = YieldParameters.new
  @backtrace = backtrace || caller
end
