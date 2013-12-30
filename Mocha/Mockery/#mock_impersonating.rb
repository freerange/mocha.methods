def mock_impersonating(object, &block)
  add_mock(Mock.new(self, ImpersonatingName.new(object), ObjectReceiver.new(object), &block))
end
