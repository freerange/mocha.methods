def on_stubbing_method_on_non_mock_object(object, symbol)
  if Mocha::Configuration.prevent?(:stubbing_method_on_non_mock_object)
    raise StubbingError.new("stubbing method on non-mock object: #{object.mocha_inspect}.#{symbol}", caller)
  end
  if Mocha::Configuration.warn_when?(:stubbing_method_on_non_mock_object)
    logger.warn "stubbing method on non-mock object: #{object.mocha_inspect}.#{symbol}"
  end
end
