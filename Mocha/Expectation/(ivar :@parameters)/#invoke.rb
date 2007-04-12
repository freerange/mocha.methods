def invoke
  @invoked_count += 1
  yield(*@parameters_to_yield) if yield? and block_given?
  @return_values.next
end
