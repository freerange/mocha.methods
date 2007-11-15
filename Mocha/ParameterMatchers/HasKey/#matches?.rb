def matches?(available_parameters)
  parameter = available_parameters.shift
  parameter.keys.include?(@key)
end
