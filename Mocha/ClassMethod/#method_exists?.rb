def method_exists?(method)
  symbol = method.to_sym
  __metaclass__ = stubbee.__metaclass__
  __metaclass__.public_method_defined?(symbol) || __metaclass__.protected_method_defined?(symbol) || __metaclass__.private_method_defined?(symbol)
end
