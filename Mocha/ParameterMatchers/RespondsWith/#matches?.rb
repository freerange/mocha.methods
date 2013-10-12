def matches?(available_parameters)
  parameter = available_parameters.shift
  @result.to_matcher.matches?( [parameter.__send__(@message)] )
end
