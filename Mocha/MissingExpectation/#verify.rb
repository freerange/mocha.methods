def verify
  msg = "Unexpected message #{message} sent to #{@mock.mocha_inspect}"
  msg << "\nSimilar expectations #{similar_expectations.collect { |expectation| expectation.message }.join("\n") }" unless similar_expectations.empty?
  raise Test::Unit::AssertionFailedError, msg if @invoked
end
