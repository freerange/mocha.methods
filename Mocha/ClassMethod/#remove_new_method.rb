def remove_new_method
  stubbee.metaclass.send(:remove_method, method)
end
