def hide_original_method
  stubbee.class_eval "alias_method :#{hidden_method}, :#{method}" if stubbee.method_defined?(method)
end
