def method_signature
  return "#{method_name}" if @parameters.is_a?(AlwaysEqual)
  "#{@method_name}(#{PrettyParameters.new(@parameters).pretty})"
end
