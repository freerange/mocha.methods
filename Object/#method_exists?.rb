def method_exists?(symbol, include_public_methods = true)
  existing_methods = private_methods(include_superclass_methods = true) + protected_methods(include_superclass_methods = true)
  existing_methods += public_methods(include_superclass_methods = true) if include_public_methods
  existing_methods.any? { |m| m.to_s == symbol.to_s } || (respond_to?(symbol) && include_public_methods)
end
