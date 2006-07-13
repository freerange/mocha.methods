def expects(symbol)
  expectations << Expectation.new(symbol)
  expectations.last
end
