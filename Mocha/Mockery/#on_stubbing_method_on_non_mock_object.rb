def on_stubbing_method_on_non_mock_object(object, method)
  if Mocha::Configuration.prevent?(:stubbing_method_on_non_mock_object)
    raise StubbingError.new("stubbing method on non-mock object: #{object.mocha_inspect}.#{method}", caller)
  end
  if Mocha::Configuration.warn_when?(:stubbing_method_on_non_mock_object)
    logger.warn "stubbing method on non-mock object: #{object.mocha_inspect}.#{method}"
  end
end
