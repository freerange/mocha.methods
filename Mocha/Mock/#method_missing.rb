def method_missing(symbol, *arguments, &block)
  if @responder and not @responder.respond_to?(symbol)
    raise NoMethodError, "undefined method `#{symbol}' for #{self.mocha_inspect} which responds like #{@responder.mocha_inspect}"
  end
  if matching_expectation_allowing_invocation = @expectations.match_allowing_invocation(symbol, *arguments)
    matching_expectation_allowing_invocation.invoke(&block)
  else
    if (matching_expectation = @expectations.match(symbol, *arguments)) || (!matching_expectation && !@everything_stubbed)
      matching_expectation.invoke(&block) if matching_expectation
      message = UnexpectedInvocation.new(self, symbol, *arguments).to_s
      require 'mocha/mockery'
      message << Mockery.instance.mocha_inspect
      raise ExpectationError.new(message, caller)
    end
  end
end
