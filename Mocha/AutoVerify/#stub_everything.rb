def stub_everything(*args)
  name, expectations = name_and_expectations_from_args(args)
  stub = Mock.new(name)
  stub.stub_everything
  stub.stubs(expectations)
  mocks << stub
  stub
end
