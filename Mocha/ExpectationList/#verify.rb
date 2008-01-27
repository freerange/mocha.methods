def verify(assertion_counter = nil)
  @expectations.each { |expectation| expectation.verify(assertion_counter) }
end
