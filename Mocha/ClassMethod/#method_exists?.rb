def method_exists?(method)
  existing_methods = []
  existing_methods += stubbee.public_methods(true) - stubbee.superclass.public_methods(true)
  existing_methods += stubbee.protected_methods(true) - stubbee.superclass.protected_methods(true)
  existing_methods += stubbee.private_methods(true) - stubbee.superclass.private_methods(true)
  existing_methods.include?(method)
end
