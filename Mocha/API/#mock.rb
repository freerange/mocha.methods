def mock(*arguments, &block)
  name = arguments.shift if arguments.first.is_a?(String)
  expectations = arguments.shift || {}
  mock = name ? Mockery.instance.named_mock(name, &block) : Mockery.instance.unnamed_mock(&block)
  mock.expects(expectations)
  mock
end
