def restore_original_method
  stubbee.__metaclass__.class_eval "alias_method :#{method}, :#{hidden_method}; remove_method :#{hidden_method}" if stubbee.__metaclass__.method_defined?(hidden_method)
end
