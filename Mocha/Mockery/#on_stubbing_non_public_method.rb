def on_stubbing_non_public_method(object, symbol)
  raise StubbingError, "stubbing non-public method: #{object.mocha_inspect}.#{symbol}" if Mocha::Configuration.prevent?(:stubbing_non_public_method)
  logger.warn "stubbing non-public method: #{object.mocha_inspect}.#{symbol}" if Mocha::Configuration.warn_when?(:stubbing_non_public_method)
end
