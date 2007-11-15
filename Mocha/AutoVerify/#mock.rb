def mock(*arguments, &block)
  name = arguments.shift if arguments.first.is_a?(String)
  expectations = arguments.shift || {}
  mock = Mock.new(name, &block)
  mock.expects(expectations)
  mocks << mock
  mock
end
