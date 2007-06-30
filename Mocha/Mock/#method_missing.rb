def method_missing(symbol, *arguments, &block)
  if @responder and not @responder.respond_to?(symbol)
    raise NoMethodError, "undefined method `#{symbol}' for #{self.mocha_inspect} which responds like #{@responder.mocha_inspect}"
  end
  matching_expectation = @expectations.detect(symbol, *arguments)
  raise ExpectationSequenceError if final_expectation_called?
  if matching_expectation then
    @final_expectation_called = matching_expectation.final?
    matching_expectation.invoke(&block)
  elsif stub_everything then
    return
  else
    unexpected_method_called(symbol, *arguments)
  end
end
