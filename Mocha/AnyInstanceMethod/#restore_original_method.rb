def restore_original_method
  if @original_method && @original_method.owner == stubbee
    stubbee.send(:define_method, method, @original_method)
    stubbee.send(@original_visibility, method)
  end
end
