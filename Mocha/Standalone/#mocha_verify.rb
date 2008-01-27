def mocha_verify(assertion_counter = nil)
  verify_mocks(assertion_counter)
  verify_stubs(assertion_counter)
end
