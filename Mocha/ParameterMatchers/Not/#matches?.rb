def matches?(available_parameters)
  parameter = available_parameters.shift
  @matcher != parameter
end
