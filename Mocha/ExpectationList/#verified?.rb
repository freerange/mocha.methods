def verified?(assertion_counter = nil)
  @expectations.all? { |expectation| expectation.verified?(assertion_counter) }
end
