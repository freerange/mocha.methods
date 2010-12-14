def matches?(available_parameters)
  actual = explode(URI.parse(available_parameters.shift))
  expected = explode(@uri)
  actual == expected
end
