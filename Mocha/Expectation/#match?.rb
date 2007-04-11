def match?(method_name, *arguments)
  return false unless @method_name == method_name
  if @parameter_block then
    return false unless @parameter_block.call(*arguments)
  else
    return false unless (@parameters == arguments)
  end
  if @expected_count.is_a?(Range) then
    return false unless @invoked_count < @expected_count.last
  else
    return false unless @invoked_count < @expected_count
  end
  return true
end
