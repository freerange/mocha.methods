def inherited_with_inheritable_attributes(child)
  inherited_without_inheritable_attributes(child) if respond_to?(:inherited_without_inheritable_attributes)
  child.instance_variable_set('@setup_methods', setup_methods.dup)
  child.instance_variable_set('@teardown_methods', teardown_methods.dup)
end
