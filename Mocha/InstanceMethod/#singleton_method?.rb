def singleton_method?(method)
  __metaclass__ = stubbee.__metaclass__
  return true if __metaclass__.public_instance_methods(false).include?(method)
  return true if __metaclass__.protected_instance_methods(false).include?(method)
  return true if __metaclass__.private_instance_methods(false).include?(method)
  return false
end
