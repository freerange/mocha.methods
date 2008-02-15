def mock_impersonating(object, &block)
  add_mock(Mock.new(ImpersonatingName.new(object), &block))
end
