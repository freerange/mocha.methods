def verify_mocks(assertion_counter = nil) # :nodoc:
  mocks.each { |mock| mock.verify(assertion_counter) }
end
