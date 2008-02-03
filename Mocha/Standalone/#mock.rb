def mock(*arguments, &block)
  name = arguments.shift if arguments.first.is_a?(String)
  expectations = arguments.shift || {}
  mock = name ? @mockery.named_mock(name, &block) : @mockery.unnamed_mock(&block)
  mock.expects(expectations)
  mock
end
