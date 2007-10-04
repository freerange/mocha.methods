def with(*arguments, &block)
  @method_signature.modify(arguments, &block)
  self
end
