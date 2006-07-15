def hide_original_method
  object.metaclass.class_eval "alias_method :#{hidden_method}, :#{method}" if object.metaclass.method_defined?(method)
end
