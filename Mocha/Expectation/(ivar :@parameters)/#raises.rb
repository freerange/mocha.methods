def raises(exception = RuntimeError, message = nil)
  @return_value = message ? lambda { raise exception, message } : lambda { raise exception }
  self
end
