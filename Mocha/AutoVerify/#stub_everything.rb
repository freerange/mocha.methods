def stub_everything(*args)
  name, expectations = name_and_expectations_from_args(args)
  mock = Mock.new(true, name)
  mock.stubs(expectations)
  mocks << mock
  mock
end
