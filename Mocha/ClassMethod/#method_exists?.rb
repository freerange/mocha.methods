def method_exists?(method)
  symbol = method.to_sym
  metaclass = stubbee.metaclass
  metaclass.public_method_defined?(symbol) || metaclass.protected_method_defined?(symbol) || metaclass.private_method_defined?(symbol)
end
