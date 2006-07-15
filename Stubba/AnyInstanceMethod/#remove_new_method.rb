def remove_new_method
  object.class_eval "remove_method :#{method}"
end
