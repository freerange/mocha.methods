def initialize(method_name)
  @method_name = method_name
  @count = 1
  @parameters, @parameter_block = AlwaysEqual.new, nil
  @invoked, @return_value = 0, nil
end
