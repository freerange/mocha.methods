def hide_original_method
  stubbee.class_eval("alias_method :#{hidden_method}, :#{method}", __FILE__, __LINE__) if stubbee.public_method_defined?(method) || stubbee.protected_method_defined?(method) || stubbee.private_method_defined?(method)
end
