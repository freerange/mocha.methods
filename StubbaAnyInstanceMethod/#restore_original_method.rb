def restore_original_method
  object.class_eval "alias_method :#{method}, :#{hidden_method}; remove_method :#{hidden_method}" if object.method_defined?(hidden_method)
end
