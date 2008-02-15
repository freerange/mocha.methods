def mock_impersonating(object, &block)
  add_mock(Mock.impersonating(object, &block))
end
