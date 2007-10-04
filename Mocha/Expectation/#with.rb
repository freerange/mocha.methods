def with(*arguments, &parameter_block)
  @parameters, @parameter_block = Parameters.new(arguments), parameter_block
  self
end
