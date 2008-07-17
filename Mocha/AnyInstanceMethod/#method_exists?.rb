def method_exists?(method)
  return true if stubbee.public_instance_methods(false).include?(method)
  return true if stubbee.protected_instance_methods(false).include?(method)
  return true if stubbee.private_instance_methods(false).include?(method)
  return false
end
