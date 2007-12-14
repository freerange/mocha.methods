def in_correct_order?
  @ordering_constraints.all? { |ordering_constraint| ordering_constraint.allows_invocation_now? }
end
