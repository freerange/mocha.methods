def restore_original_method
  stubbee.__metaclass__.class_eval("alias_method :#{method}, :#{hidden_method}; remove_method :#{hidden_method}", __FILE__, __LINE__) if stubbee.respond_to?(hidden_method, include_private_methods = true)
end
