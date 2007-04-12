def invoke
  @invoked_count += 1
  if block_given? then
    next_yield_parameters = @yield_parameters.next
    yield(*next_yield_parameters) if next_yield_parameters
  end
  @return_values.next
end
