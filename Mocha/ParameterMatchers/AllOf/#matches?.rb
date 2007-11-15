def matches?(available_parameters)
  parameter = available_parameters.shift
  @matchers.all? { |matcher| matcher.matches?([parameter]) }
end
