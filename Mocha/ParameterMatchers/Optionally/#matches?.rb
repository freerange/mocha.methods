def matches?(available_parameters)
  index = 0
  while (available_parameters.length > 0) && (index < @matchers.length) do
    matcher = @matchers[index]
    return false unless matcher.matches?(available_parameters)
    index += 1
  end
  return true
end
