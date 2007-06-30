def invocations_allowed?
  if @expected_count.is_a?(Range) then
    @invoked_count < @expected_count.last
  else
    @invoked_count < @expected_count
  end
end
