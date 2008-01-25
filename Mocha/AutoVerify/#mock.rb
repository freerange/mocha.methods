def mock(*arguments, &block)
  name = arguments.shift if arguments.first.is_a?(String)
  expectations = arguments.shift || {}
  mock = name ? Mock.named(name, &block) : Mock.unnamed(&block)
  mock.expects(expectations)
  mocks << mock
  mock
end
