def on_stubbing_non_public_method(object, method)
  if Mocha::Configuration.prevent?(:stubbing_non_public_method)
    raise StubbingError.new("stubbing non-public method: #{object.mocha_inspect}.#{method}", caller)
  end
  if Mocha::Configuration.warn_when?(:stubbing_non_public_method)
    logger.warn "stubbing non-public method: #{object.mocha_inspect}.#{method}"
  end
end
