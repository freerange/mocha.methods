def with(*arguments, &block)
  @parameters = Parameters.new(arguments, &block)
  self
end
