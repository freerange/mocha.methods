def verified?(assertion_counter = nil)
  assertion_counter.increment if assertion_counter && @cardinality.needs_verifying?
  @cardinality.verified?(@invocation_count)
end
