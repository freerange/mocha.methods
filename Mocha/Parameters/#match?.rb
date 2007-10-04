def match?(parameters)
  @parameters.nil? || (@block && @block.call(*parameters)) || (@parameters == parameters)
end
