def method_signature
  signature = "#{@mock.mocha_inspect}.#{@method_matcher.mocha_inspect}#{@parameters_matcher.mocha_inspect}"
  signature << "; #{@ordering_constraints.map { |oc| oc.mocha_inspect }.join("; ")}" unless @ordering_constraints.empty?
  signature
end
