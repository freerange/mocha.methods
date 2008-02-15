def named_mock(name, &block)
  add_mock(Mock.named(name, &block))
end
