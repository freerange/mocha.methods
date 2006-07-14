def raises(exception = RuntimeError, message = nil)
  @return_value = lambda{ raise exception, message }
  self
end
