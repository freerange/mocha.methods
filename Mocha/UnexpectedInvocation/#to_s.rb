def to_s
  method_signature = "#{@mock.mocha_inspect}.#{@method_matcher.mocha_inspect}#{@parameters_matcher.mocha_inspect}"
  "unexpected invocation: #{method_signature}\n"
end
