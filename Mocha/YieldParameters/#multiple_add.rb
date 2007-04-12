def multiple_add(*parameter_groups)
  @parameter_groups << MultipleYields.new(*parameter_groups)
end
