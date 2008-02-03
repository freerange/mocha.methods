def named_mock(name, &block)
  mock = Mock.named(name, &block)
  @mocks << mock
  mock
end
