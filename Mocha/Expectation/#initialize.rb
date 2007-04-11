def initialize(mock, method_name, backtrace = nil)
  @mock, @method_name = mock, method_name
  @expected_count = 1
  @parameters, @parameter_block = AlwaysEqual.new, nil
  @invoked_count, @return_value = 0, nil
  @backtrace = backtrace || caller
  @yield = nil
end
