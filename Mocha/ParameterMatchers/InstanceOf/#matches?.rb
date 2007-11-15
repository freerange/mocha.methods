def matches?(available_parameters)
  parameter = available_parameters.shift
  parameter.instance_of?(@klass)
end
