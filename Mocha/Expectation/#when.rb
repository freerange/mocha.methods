def when(state_predicate)
  add_ordering_constraint(InStateOrderingConstraint.new(state_predicate))
  self
end
