def method_exists?(method)
  existing_methods = []
  existing_methods += stubbee.public_methods(false)
  existing_methods += stubbee.protected_methods(false)
  existing_methods += stubbee.private_methods(false)
  existing_methods.include?(method)
end
