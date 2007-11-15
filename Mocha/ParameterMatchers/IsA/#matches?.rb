def matches?(available_parameters)
  parameter = available_parameters.shift
  parameter.is_a?(@klass)
end
