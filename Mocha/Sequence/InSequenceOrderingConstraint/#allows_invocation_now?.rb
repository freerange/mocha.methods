def allows_invocation_now?
  @sequence.satisfied_to_index?(@index)
end
