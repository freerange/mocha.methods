def remove_new_method
  stubbee.metaclass.class_eval "remove_method :#{method}"
end
