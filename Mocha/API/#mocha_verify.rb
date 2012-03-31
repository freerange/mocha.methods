def mocha_verify(assertion_counter = nil)
  Mockery.instance.verify(assertion_counter)
end
