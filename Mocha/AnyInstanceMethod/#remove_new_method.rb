def remove_new_method
  stubbee.class_eval("remove_method :#{method}", __FILE__, __LINE__)
end
