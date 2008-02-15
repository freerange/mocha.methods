def named_mock(name, &block)
  add_mock(Mock.new(Name.new(name), &block))
end
