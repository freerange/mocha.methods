def invoke
  @invoked_count += 1
  yield(*@yield_parameters) if @yield_parameters and block_given?
  @return_values.next
end
