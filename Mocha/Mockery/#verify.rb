def verify(assertion_counter = nil)
  unless mocks.all? { |mock| mock.verified?(assertion_counter) }
    expectations = mocks.map { |mock| mock.expectations.to_a }.flatten
    unsatisfied = expectations.reject { |e| e.verified? }
    satisfied = expectations.select { |e| e.verified? }
    message = "not all expectations were satisfied\n#{mocha_inspect}"
    if unsatisfied_expectations.empty?
      backtrace = caller
    else
      backtrace = unsatisfied_expectations[0].backtrace
    end
    raise ExpectationError.new(message, backtrace)
  end
end
