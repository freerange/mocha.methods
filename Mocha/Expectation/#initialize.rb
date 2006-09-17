def initialize(mock, method_name, backtrace = nil)
  @mock, @method_name = mock, method_name
  @count = 1
  @parameters, @parameter_block = AlwaysEqual.new, nil
  @invoked, @return_value = 0, nil
  @backtrace = backtrace || caller
end
