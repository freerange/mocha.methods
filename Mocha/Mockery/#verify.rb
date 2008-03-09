def verify(assertion_counter = nil)
  unless mocks.all? { |mock| mock.verified?(assertion_counter) }
    message = "not all expectations were satisfied\n#{mocha_inspect}"
    if unsatisfied_expectations.empty?
      backtrace = caller
    else
      backtrace = unsatisfied_expectations[0].backtrace
    end
    raise ExpectationError.new(message, backtrace)
  end
  expectations.each do |e|
    on_stubbing_method_unnecessarily(e) unless e.used?
  end
end
