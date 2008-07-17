def on_stubbing_non_existent_method(object, method)
  if Mocha::Configuration.prevent?(:stubbing_non_existent_method)
    raise StubbingError.new("stubbing non-existent method: #{object.mocha_inspect}.#{method}", caller)
  end
  if Mocha::Configuration.warn_when?(:stubbing_non_existent_method)
    logger.warn "stubbing non-existent method: #{object.mocha_inspect}.#{method}"
  end
end
