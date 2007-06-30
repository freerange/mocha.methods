def stub(*args)
  name, expectations = name_and_expectations_from_args(args)
  mock = Mock.new(false, name)
  mock.stubs(expectations)
  mocks << mock
  mock
end
