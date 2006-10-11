def verify
  yield(self) if block_given?
  unless (@count === @invoked) then
    error = ExpectationError.new(error_message(@count, @invoked))
    error.set_backtrace(backtrace)
    raise error
  end
end
