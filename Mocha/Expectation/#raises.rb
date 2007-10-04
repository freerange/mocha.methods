def raises(exception = RuntimeError, message = nil)
  @return_values += ReturnValues.new(ExceptionRaiser.new(exception, message))
  self
end
