def matches?(available_parameters)
  parameter = available_parameters.shift
  parameter.keys.any? { |key| @key.to_matcher.matches?([key]) }
end
