def constrain_as_next_in_sequence(expectation)
  index = @expectations.length
  @expectations << expectation
  expectation.add_ordering_constraint(InSequenceOrderingConstraint.new(self, index))
end
