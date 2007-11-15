def matches?(available_parameters)
  parameter = available_parameters.shift
  @matchers.any? { |matcher| matcher.matches?([parameter]) }
end
