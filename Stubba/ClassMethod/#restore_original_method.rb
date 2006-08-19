def restore_original_method
  stubbee.metaclass.class_eval "alias_method :#{method}, :#{hidden_method}; remove_method :#{hidden_method}" if stubbee.metaclass.method_defined?(hidden_method)
end
