def parameters_match?(actual_parameters)
  matchers.all? { |matcher| matcher.matches?(actual_parameters) } && (actual_parameters.length == 0)
end
