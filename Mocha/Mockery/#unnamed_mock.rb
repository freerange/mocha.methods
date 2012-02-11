def unnamed_mock(&block)
  add_mock(Mock.new(self, &block))
end
