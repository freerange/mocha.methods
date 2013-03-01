def restore_original_method
  if @original_method && @original_method.owner == stubbee
    stubbee.send(:define_method, method, @original_method)
    Module.instance_method(@original_visibility).bind(stubbee).call(method)
  end
end
