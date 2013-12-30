def method_missing(symbol, *arguments, &block)
  if @responder and not @responder.respond_to?(symbol)
    raise NoMethodError, "undefined method `#{symbol}' for #{self.mocha_inspect} which responds like #{@responder.mocha_inspect}"
  end
  if matching_expectation_allowing_invocation = all_expectations.match_allowing_invocation(symbol, *arguments)
    matching_expectation_allowing_invocation.invoke(&block)
  else
    if (matching_expectation = all_expectations.match(symbol, *arguments)) || (!matching_expectation && !@everything_stubbed)
      if @unexpected_invocation.nil?
        @unexpected_invocation = UnexpectedInvocation.new(self, symbol, *arguments)
        matching_expectation.invoke(&block) if matching_expectation
        message = @unexpected_invocation.full_description
        message << @mockery.mocha_inspect
      else
        message = @unexpected_invocation.short_description
      end
      raise ExpectationErrorFactory.build(message, caller)
    end
  end
end
