def mock_impersonating_any_instance_of(klass, &block)
  mock = Mock.impersonating_any_instance_of(klass, &block)
  @mocks << mock
  mock
end
