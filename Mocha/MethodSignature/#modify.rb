def modify(parameters = [ParameterMatchers::AnyParameters.new], &matching_block)
  @parameters, @matching_block = parameters, matching_block
end
