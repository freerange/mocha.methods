def matches?(available_parameters)
  parameter = available_parameters.shift
  parameter.kind_of?(@klass)
end
