def add(*parameters)
  @parameter_groups << SingleYield.new(*parameters)
end
