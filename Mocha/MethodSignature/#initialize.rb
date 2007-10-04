def initialize(method_name, parameters = nil, &block)
  @method_name, @parameters, @block = method_name, parameters, block
end
