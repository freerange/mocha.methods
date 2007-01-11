def hide_original_method
  stubbee.__metaclass__.class_eval "alias_method :#{hidden_method}, :#{method}" if stubbee.__metaclass__.method_defined?(method)
end
