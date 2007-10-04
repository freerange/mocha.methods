def match?(parameters)
  (@block && @block.call(*parameters)) || (@parameters == parameters)
end
