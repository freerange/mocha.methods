def remove_new_method
  object.metaclass.class_eval "remove_method :#{method}"
end
