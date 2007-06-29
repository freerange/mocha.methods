def matching_expectation(symbol, *arguments)
  @expectations.reverse.detect { |expectation| expectation.match?(symbol, *arguments) }
end
