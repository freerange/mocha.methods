def multiple_yields(*parameter_groups)
  @yield_parameters.multiple_add(*parameter_groups)
  self
end
