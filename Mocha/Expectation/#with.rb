def with(*expected_parameters, &matching_block)
  @parameters_matcher = ParametersMatcher.new(expected_parameters, &matching_block)
  self
end
