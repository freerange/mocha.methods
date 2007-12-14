def satisfied?
  if @expected_count.is_a?(Range) then
    @invoked_count >= @expected_count.first
  else
    @invoked_count >= @expected_count
  end
end
