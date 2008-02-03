def unnamed_mock(&block)
  mock = Mock.unnamed(&block)
  @mocks << mock
  mock
end
