def mocha_verify(assertion_counter = nil) # :nodoc:
  Mockery.instance.verify(assertion_counter)
end
