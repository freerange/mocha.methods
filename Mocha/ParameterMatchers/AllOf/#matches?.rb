def matches?(available_parameters)
  parameter = available_parameters.shift
  @matchers.all? { |matcher| matcher.to_matcher.matches?([parameter]) }
end
