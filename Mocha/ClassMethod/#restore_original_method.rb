def restore_original_method
  if @original_method && @original_method.owner == stubbee.__metaclass__
    stubbee.__metaclass__.send(:define_method, method, @original_method)
    stubbee.__metaclass__.send(@original_visibility, method)
  end
end
