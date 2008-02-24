def hide_original_method
  stubbee.__metaclass__.class_eval("alias_method :#{hidden_method}, :#{method}", __FILE__, __LINE__) if stubbee.respond_to?(method, include_private_methods = true)
end
