def named_mock(name, &block)
  add_mock(Mock.new(self, Name.new(name), &block))
end
