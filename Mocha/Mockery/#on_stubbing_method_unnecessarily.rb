def on_stubbing_method_unnecessarily(expectation)
  stubbing_error = StubbingError.new("stubbing method unnecessarily: #{expectation.method_signature}")
  stubbing_error.set_backtrace(expectation.backtrace)
  raise stubbing_error if Mocha::Configuration.prevent?(:stubbing_method_unnecessarily)
  logger.warn "stubbing method unnecessarily: #{expectation.method_signature}" if Mocha::Configuration.warn_when?(:stubbing_method_unnecessarily)
end
