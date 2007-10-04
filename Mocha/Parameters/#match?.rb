def match?(parameters)
  if @block then
    return false unless @block.call(*parameters)
  else
    return false unless (@parameters == parameters)
  end
  return true
end
