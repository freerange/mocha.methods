def verify
  yield(self) if block_given?
  unless @cardinality.verified?(@invocation_count) then
    error = ExpectationError.new(error_message(@cardinality, @invocation_count), backtrace)
    raise error
  end
end
