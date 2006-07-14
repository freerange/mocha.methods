def message
  params = @parameters.is_a?(Array) ? @parameters : [@parameters.to_s]
  params = PrettyParameters.new(params)
  ":#{@method_name}(#{params.pretty})"
end
