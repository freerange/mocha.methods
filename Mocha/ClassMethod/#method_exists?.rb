def method_exists?(method)
  return true if (stubbee.public_methods(true) - stubbee.superclass.public_methods(true)).include?(method)
  return true if (stubbee.protected_methods(true) - stubbee.superclass.protected_methods(true)).include?(method)
  return true if (stubbee.private_methods(true) - stubbee.superclass.private_methods(true)).include?(method)
  return false
end
