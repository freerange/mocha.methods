def verify(assertion_counter = nil)
  @mocks.each { |mock| mock.verify(assertion_counter) }
end
