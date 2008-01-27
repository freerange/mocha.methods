def verify(assertion_counter = nil)
  if @cardinality.needs_verifying?
    assertion_counter.increment if assertion_counter 
    unless @cardinality.verified?(@invocation_count) then
      raise ExpectationError.new(error_message(@cardinality, @invocation_count), backtrace)
    end
  end
end
