def match_allowing_invocation(method_name, *arguments)
  matching_expectations(method_name, *arguments).detect { |e| e.invocations_allowed? }
end
