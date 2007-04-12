def yields(*parameters)
  @yield = true
  @yield_parameters = parameters
  self
end
