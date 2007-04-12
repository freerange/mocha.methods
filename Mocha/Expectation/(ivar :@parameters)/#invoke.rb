def invoke
  @invoked_count += 1
  if block_given? then
    @yield_parameters.next_invocation.each do |yield_parameters|
      yield(*yield_parameters)
    end
  end
  @return_values.next
end
