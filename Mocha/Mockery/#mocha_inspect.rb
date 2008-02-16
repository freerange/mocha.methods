def mocha_inspect
  message = ""
  message << "unsatisfied expectations:\n  #{unsatisfied_expectations.map { |e| e.mocha_inspect }.join("\n  ")}\n" unless unsatisfied_expectations.empty?
  message << "satisfied expectations:\n  #{satisfied_expectations.map { |e| e.mocha_inspect }.join("\n  ")}\n" unless satisfied_expectations.empty?
  message << "states:\n  #{state_machines.map { |sm| sm.mocha_inspect }.join("\n  ")}" unless state_machines.empty?
  message
end
