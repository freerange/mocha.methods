def singleton_method?(method)
  metaclass = stubbee.__metaclass__
  return true if metaclass.public_instance_methods(false).include?(method)
  return true if metaclass.protected_instance_methods(false).include?(method)
  return true if metaclass.private_instance_methods(false).include?(method)
  return false
end
