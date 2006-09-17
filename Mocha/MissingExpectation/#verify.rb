def verify
  msg = error_message(0, 1)
  similar_expectations_list = similar_expectations.collect { |expectation| expectation.method_signature }.join("\n")
  msg << "\nSimilar expectations:\n#{similar_expectations_list}" unless similar_expectations.empty?
  raise Test::Unit::AssertionFailedError, msg if @invoked
end
