def on_stubbing_non_existent_method(object, symbol)
  raise StubbingError, "stubbing non-existent method: #{object.mocha_inspect}.#{symbol}" if Mocha::Configuration.prevent?(:stubbing_non_existent_method)
  logger.warn "stubbing non-existent method: #{object.mocha_inspect}.#{symbol}" if Mocha::Configuration.warn_when?(:stubbing_non_existent_method)
end
