def matches?(available_parameters)
  parameter = available_parameters.shift
  @matchers.any? { |matcher| matcher.to_matcher.matches?([parameter]) }
end
