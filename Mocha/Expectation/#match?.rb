def match?(method_name, *arguments)
  (@method_name == method_name) and (@parameter_block ? @parameter_block.call(*arguments) : (@parameters == arguments))
end
