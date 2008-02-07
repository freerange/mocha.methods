def mock_impersonating(object, &block)
  mock = Mock.impersonating(object, &block)
  @mocks << mock
  mock
end
