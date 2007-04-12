def add(*parameters)
  @parameter_groups << SingleYieldParameterGroup.new(*parameters)
end
