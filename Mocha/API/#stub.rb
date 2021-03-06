def stub(*arguments, &block)
  name = arguments.shift if arguments.first.is_a?(String)
  expectations = arguments.shift || {}
  stub = name ? Mockery.instance.named_mock(name, &block) : Mockery.instance.unnamed_mock(&block)
  stub.stubs(expectations)
  stub
end
