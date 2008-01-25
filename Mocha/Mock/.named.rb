def named(name, &block)
  Mock.new(Name.new(name), &block)
end
