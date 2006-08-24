def invoke
  @invoked += 1
  yield(*@parameters_to_yield) if yield? and block_given?
  @return_value.is_a?(Proc) ? @return_value.call : @return_value
end
