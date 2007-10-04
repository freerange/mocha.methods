def match?(method_name, *arguments)
  return false unless @method_name == method_name
  return @parameters.match?(arguments)
end
