def inherited_with_setup_and_teardown_methods(child)
  inherited_without_setup_and_teardown_methods(child) if respond_to?(:inherited_without_setup_and_teardown_methods, true)
  child.instance_variable_set('@setup_methods', setup_methods.dup)
  child.instance_variable_set('@teardown_methods', teardown_methods.dup)
end
