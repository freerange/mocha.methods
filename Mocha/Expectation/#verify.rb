def verify
  yield(self) if block_given?
  unless (@expected_count === @invoked_count) then
    error = ExpectationError.new(error_message(@expected_count, @invoked_count), backtrace)
    raise error
  end
end