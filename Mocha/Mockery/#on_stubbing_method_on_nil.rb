def on_stubbing_method_on_nil(object, method)
  if Mocha::Configuration.prevent?(:stubbing_method_on_nil)
    raise StubbingError.new("stubbing method on nil: #{object.mocha_inspect}.#{method}", caller)
  end
  if Mocha::Configuration.warn_when?(:stubbing_method_on_nil)
    logger.warn "stubbing method on nil: #{object.mocha_inspect}.#{method}"
  end
end
