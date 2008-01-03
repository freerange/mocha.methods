def matches?(available_parameters)
  parameter = available_parameters.shift
  parameter.__send__(@message) == @result
end
