def matches?(available_parameters)
  parameter = available_parameters.shift
  return false unless parameter.respond_to?(:keys)
  parameter.keys.any? { |key| @key.to_matcher.matches?([key]) }
end
