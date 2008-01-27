def verify_all(assertion_counter = nil)
  unique_mocks.each { |mock| mock.verify(assertion_counter) }
end
