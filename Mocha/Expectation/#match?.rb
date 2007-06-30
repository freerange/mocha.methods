def match?(method_name, *arguments)
  return false unless @method_name == method_name
  if @parameter_block then
    return false unless @parameter_block.call(*arguments)
  else
    return false unless (@parameters == arguments)
  end
  return true
end
