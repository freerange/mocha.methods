def yields(*parameters)
  @yield = true
  @parameters_to_yield = parameters
  self
end
