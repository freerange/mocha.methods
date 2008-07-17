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
    unless Mocha::Configuration.allow?(:stubbing_method_unnecessarily)
      unless e.used?
        on_stubbing_method_unnecessarily(e)
      end
    end
  end
end
