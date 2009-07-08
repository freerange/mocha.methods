def matches?(available_parameters)
  parameter = available_parameters.shift
  return false unless parameter.respond_to?(:values)
  parameter.values.any? { |value| @value.to_matcher.matches?([value]) }
end
