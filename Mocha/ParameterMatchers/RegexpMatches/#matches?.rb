def matches?(available_parameters)
  parameter = available_parameters.shift
  parameter =~ @regexp
end
