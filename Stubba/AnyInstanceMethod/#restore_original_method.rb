def restore_original_method
  stubbee.class_eval "alias_method :#{method}, :#{hidden_method}; remove_method :#{hidden_method}" if stubbee.method_defined?(hidden_method)
end
