def remove_new_method
  stubbee.__metaclass__.class_eval "remove_method :#{method}"
end
