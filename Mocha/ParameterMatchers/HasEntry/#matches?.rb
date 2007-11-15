def matches?(available_parameters)
  parameter = available_parameters.shift
  parameter[@key] == @value
end
