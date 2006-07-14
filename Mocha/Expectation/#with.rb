def with(*arguments, &parameter_block)
  @parameters, @parameter_block = arguments, parameter_block
  class << @parameters; def to_s; join(', '); end; end
  self
end
