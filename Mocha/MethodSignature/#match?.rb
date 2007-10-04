def match?(method_name, parameters)
  (@method_name == method_name) && (@parameters.nil? || (@block && @block.call(*parameters)) || (@parameters == parameters))
end
