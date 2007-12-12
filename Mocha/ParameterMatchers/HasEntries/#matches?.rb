def matches?(available_parameters)
  parameter = available_parameters.shift
  @entries.all? { |key, value| parameter[key] == value }
end
