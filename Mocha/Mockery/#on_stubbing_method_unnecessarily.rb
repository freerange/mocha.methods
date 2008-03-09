def on_stubbing_method_unnecessarily(expectation)
  raise StubbingError, "stubbing method unnecessarily: #{expectation.method_signature}" if Mocha::Configuration.prevent?(:stubbing_method_unnecessarily)
  logger.warn "stubbing method unnecessarily: #{expectation.method_signature}" if Mocha::Configuration.warn_when?(:stubbing_method_unnecessarily)
end
