def impersonating(object, &block)
  Mock.new(ImpersonatingName.new(object), &block)
end
