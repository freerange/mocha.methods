def method_exists?(method)
  existing_methods = []
  existing_methods += stubbee.public_instance_methods(false)
  existing_methods += stubbee.protected_instance_methods(false)
  existing_methods += stubbee.private_instance_methods(false)
  existing_methods.any? { |m| m.to_s == method.to_s }
end