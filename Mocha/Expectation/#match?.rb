def match?(method_name, *arguments)
  if @parameter_block then
    @parameter_block.call(*arguments)
  else
    (@method_name == method_name) and (@parameters == arguments)
  end
end
