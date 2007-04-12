def multiple_add(*parameter_groups)
  @parameter_groups << MultipleYieldParameterGroup.new(*parameter_groups)
end
