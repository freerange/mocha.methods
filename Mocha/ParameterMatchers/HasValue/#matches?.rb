def matches?(available_parameters)
  parameter = available_parameters.shift
  parameter.values.any? { |value| @value.to_matcher.matches?([value]) }
end
