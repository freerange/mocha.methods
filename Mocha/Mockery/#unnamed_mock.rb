def unnamed_mock(&block)
  add_mock(Mock.new(&block))
end
