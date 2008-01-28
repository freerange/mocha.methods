def matches?(available_parameters)
  parameter = available_parameters.shift
  matching_keys = parameter.keys.select { |key| @key.to_matcher.matches?([key]) }
  matching_keys.any? { |key| @value.to_matcher.matches?([parameter[key]]) }
end
