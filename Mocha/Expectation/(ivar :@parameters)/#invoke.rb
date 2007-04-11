def invoke
  @invoked_count += 1
  yield(*@parameters_to_yield) if yield? and block_given?
  @return_value.__is_a__(Proc) ? @return_value.call : @return_value
end
