def matches?(available_parameters)
  parameter = available_parameters.shift
  return false unless parameter.respond_to?(:include?)
  return parameter.include?(@item)
end
