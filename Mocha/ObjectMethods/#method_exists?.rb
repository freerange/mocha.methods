def method_exists?(method, include_public_methods = true)
  if include_public_methods
    return true if public_methods(include_superclass_methods = true).include?(method)
    return true if respond_to?(method.to_sym)
  end
  return true if protected_methods(include_superclass_methods = true).include?(method)
  return true if private_methods(include_superclass_methods = true).include?(method)
  return false
end
