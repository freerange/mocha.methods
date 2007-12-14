def initialize(expected_parameters = [ParameterMatchers::AnyParameters.new], &matching_block)
  @expected_parameters, @matching_block = expected_parameters, matching_block
end
