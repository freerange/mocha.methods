def stub(*arguments, &block)
  name = arguments.shift if arguments.first.is_a?(String)
  expectations = arguments.shift || {}
  stub = Mock.new(name, &block)
  stub.stubs(expectations)
  mocks << stub
  stub
end
