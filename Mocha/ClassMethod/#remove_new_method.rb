def remove_new_method
  stubbee.__metaclass__.send(:remove_method, method)
end
