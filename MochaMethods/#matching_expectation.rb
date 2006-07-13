	def matching_expectation(symbol, *arguments)
    expectations.detect { |expectation| expectation.match?(symbol, *arguments) }
  end
