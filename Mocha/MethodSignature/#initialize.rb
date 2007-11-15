def initialize(mock, method_name, parameters = [ParameterMatchers::AnyParameters.new], &matching_block)
  @mock, @method_name, @parameters, @matching_block = mock, method_name, parameters, matching_block
end
