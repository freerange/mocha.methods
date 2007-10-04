def match?(method_name, *arguments)
  @method_signature.match?(method_name, arguments)
end
