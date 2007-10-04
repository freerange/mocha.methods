def match?(method_name, *arguments)
  (@method_name == method_name) && @parameters.match?(arguments)
end
