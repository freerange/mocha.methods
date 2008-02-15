def mock_impersonating_any_instance_of(klass, &block)
  add_mock(Mock.new(ImpersonatingAnyInstanceName.new(klass), &block))
end
