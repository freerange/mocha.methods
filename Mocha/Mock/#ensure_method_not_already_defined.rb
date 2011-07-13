def ensure_method_not_already_defined(method_name)
  self.metaclass.send(:undef_method, method_name) if self.metaclass.method_defined?(method_name)
end
