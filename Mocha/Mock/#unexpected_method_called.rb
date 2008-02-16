def unexpected_method_called(symbol, *arguments)
  method_matcher = MethodMatcher.new(symbol)
  parameters_matcher = ParametersMatcher.new(arguments)
  method_signature = "#{mocha_inspect}.#{method_matcher.mocha_inspect}#{parameters_matcher.mocha_inspect}"
  message = "unexpected invocation: #{method_signature}\n"
  message << Mockery.instance.mocha_inspect
  raise ExpectationError.new(message, caller)
end
