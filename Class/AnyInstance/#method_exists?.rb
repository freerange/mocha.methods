def method_exists?(symbol, include_public_methods = true)
  existing_methods = @stubba_object.private_instance_methods(include_superclass_methods = true) + @stubba_object.protected_instance_methods(include_superclass_methods = true)
  existing_methods += @stubba_object.public_instance_methods(include_superclass_methods = true) if include_public_methods
  existing_methods.any? { |m| m.to_s == symbol.to_s }
end
