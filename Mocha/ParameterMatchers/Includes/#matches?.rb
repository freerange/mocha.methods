def matches?(available_parameters)
  parameter = available_parameters.shift
  return parameter.include?(@item)
end
