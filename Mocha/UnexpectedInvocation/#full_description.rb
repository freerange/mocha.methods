def full_description
  method_matcher = MethodMatcher.new(@symbol)
  parameters_matcher = ParametersMatcher.new(@arguments)
  method_signature = "#{@mock.mocha_inspect}.#{method_matcher.mocha_inspect}#{parameters_matcher.mocha_inspect}"
  "unexpected invocation: #{method_signature}\n"
end
