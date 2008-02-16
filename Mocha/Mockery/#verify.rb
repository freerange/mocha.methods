def verify(assertion_counter = nil)
  unless mocks.all? { |mock| mock.verified?(assertion_counter) }
    expectations = mocks.map { |mock| mock.expectations.to_a }.flatten
    unsatisfied = expectations.reject { |e| e.verified? }
    satisfied = expectations.select { |e| e.verified? }
    message = ""
    message << "unsatisfied expectations:\n  #{unsatisfied.map { |e| e.mocha_inspect }.join("\n  ")}\n" unless unsatisfied.empty?
    message << "satisfied expectations:\n  #{satisfied.map { |e| e.mocha_inspect }.join("\n  ")}\n" unless satisfied.empty?
    message << "states:\n  #{state_machines.map { |sm| sm.mocha_inspect }.join("\n  ")}" unless state_machines.empty?
    if unsatisfied.empty?
      backtrace = caller
    else
      backtrace = unsatisfied[0].backtrace
    end
    raise ExpectationError.new(message, backtrace)
  end
end
