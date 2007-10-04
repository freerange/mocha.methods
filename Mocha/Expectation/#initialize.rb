def initialize(mock, method_name, backtrace = nil)
  @mock = mock
  @method_signature = MethodSignature.new(method_name)
  @expected_count, @invoked_count = 1, 0
  @return_values = ReturnValues.new
  @yield_parameters = YieldParameters.new
  @backtrace = backtrace || caller
end
