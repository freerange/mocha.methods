def detect(method_name, *arguments)
  expectations = @expectations.reverse.select { |e| e.match?(method_name, *arguments) }
  expectation = expectations.detect { |e| e.invocations_allowed? }
  expectation || expectations.first
end
