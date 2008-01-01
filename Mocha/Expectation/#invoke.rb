def invoke
  @invocation_count += 1
  perform_side_effects()
  if block_given? then
    @yield_parameters.next_invocation.each do |yield_parameters|
      yield(*yield_parameters)
    end
  end
  @return_values.next
end
