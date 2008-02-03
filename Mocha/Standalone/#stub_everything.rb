def stub_everything(*arguments, &block)
  name = arguments.shift if arguments.first.is_a?(String)
  expectations = arguments.shift || {}
  stub = name ? @mockery.named_mock(name, &block) : @mockery.unnamed_mock(&block)
  stub.stub_everything
  stub.stubs(expectations)
  stub
end
