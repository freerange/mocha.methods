def matches?(available_parameters)
  parameter = available_parameters.shift
  @object == YAML.load(parameter)
end
