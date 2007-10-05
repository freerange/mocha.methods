def initialize(mock, method_name, parameters = nil, &block)
  @mock, @method_name, @parameters, @block = mock, method_name, parameters, block
end
