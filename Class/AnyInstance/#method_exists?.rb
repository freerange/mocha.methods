def method_exists?(method, include_public_methods = true)
  if include_public_methods
    return true if @stubba_object.public_instance_methods(include_superclass_methods = true).include?(method)
  end
  return true if @stubba_object.protected_instance_methods(include_superclass_methods = true).include?(method)
  return true if @stubba_object.private_instance_methods(include_superclass_methods = true).include?(method)
  return false
end
