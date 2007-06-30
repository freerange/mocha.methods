def detect(method_name, *arguments)
  expectations = @expectations.reverse.select { |expectation| expectation.match?(method_name, *arguments) }
  expectation = expectations.detect { |expectation| expectation.invocations_allowed? }
  expectation || expectations.first
end
