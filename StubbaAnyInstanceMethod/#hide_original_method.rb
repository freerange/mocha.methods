def hide_original_method
  object.class_eval "alias_method :#{hidden_method}, :#{method}" if object.method_defined?(method)
end
