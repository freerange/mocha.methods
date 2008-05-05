def on_stubbing_method_unnecessarily(expectation)
  if Mocha::Configuration.prevent?(:stubbing_method_unnecessarily)
    raise StubbingError.new("stubbing method unnecessarily: #{expectation.method_signature}", expectation.backtrace)
  end
  if Mocha::Configuration.warn_when?(:stubbing_method_unnecessarily)
    logger.warn "stubbing method unnecessarily: #{expectation.method_signature}"
  end
end
