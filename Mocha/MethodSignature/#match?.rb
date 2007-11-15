def match?(actual_method_name, actual_parameters = [])
  return false unless (@method_name == actual_method_name)
  if @matching_block
    return @matching_block.call(*actual_parameters)
  else
    return parameters_match?(actual_parameters)
  end
end
