def mock_impersonating_any_instance_of(klass, &block)
  add_mock(Mock.impersonating_any_instance_of(klass, &block))
end
