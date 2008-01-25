def stub(*arguments, &block)
  name = arguments.shift if arguments.first.is_a?(String)
  expectations = arguments.shift || {}
  stub = name ? Mock.named(name, &block) : Mock.unnamed(&block)
  stub.stubs(expectations)
  mocks << stub
  stub
end
