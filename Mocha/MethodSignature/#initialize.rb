def initialize(mock, method_name, parameters = nil, &matching_block)
  @mock, @method_name, @parameters, @matching_block = mock, method_name, parameters, matching_block
end
