def match?(actual_parameters = [])
  if @matching_block
    return @matching_block.call(*actual_parameters)
  else
    return parameters_match?(actual_parameters)
  end
end
