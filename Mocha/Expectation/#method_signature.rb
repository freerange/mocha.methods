def method_signature
  return "#{method_name}" if @parameters.__is_a__(AlwaysEqual)
  "#{@method_name}(#{PrettyParameters.new(@parameters.to_a).pretty})"
end
