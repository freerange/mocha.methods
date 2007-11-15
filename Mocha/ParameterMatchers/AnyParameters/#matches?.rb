def matches?(available_parameters)
  while available_parameters.length > 0 do
    available_parameters.shift
  end
  return true
end
