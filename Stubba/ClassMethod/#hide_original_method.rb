def hide_original_method
  stubbee.metaclass.class_eval "alias_method :#{hidden_method}, :#{method}" if stubbee.metaclass.method_defined?(method)
end
