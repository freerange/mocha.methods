def verify(assertion_counter = nil)
  @mocks.each { |mock| mock.verify(assertion_counter) }
  $stubba.verify_all(assertion_counter) if $stubba
end
