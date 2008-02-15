def method_signature
  "#{@mock.mocha_inspect}.#{@method_matcher.mocha_inspect}#{@parameters_matcher.mocha_inspect}"
end
