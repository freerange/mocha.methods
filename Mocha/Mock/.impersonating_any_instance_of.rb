def impersonating_any_instance_of(klass, &block)
  Mock.new(ImpersonatingAnyInstanceName.new(klass), &block)
end
