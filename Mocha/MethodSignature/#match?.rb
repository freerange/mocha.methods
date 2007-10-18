def match?(actual_method_name, actual_parameters = nil)
  (@method_name == actual_method_name) && ((@matching_block.nil? && @parameters.nil?) || (@matching_block && @matching_block.call(*actual_parameters)) || (@parameters == actual_parameters))
end
