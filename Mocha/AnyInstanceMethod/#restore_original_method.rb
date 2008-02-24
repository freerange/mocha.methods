def restore_original_method
  stubbee.class_eval("alias_method :#{method}, :#{hidden_method}; remove_method :#{hidden_method}", __FILE__, __LINE__) if stubbee.public_method_defined?(hidden_method) || stubbee.protected_method_defined?(hidden_method) || stubbee.private_method_defined?(hidden_method)
end
