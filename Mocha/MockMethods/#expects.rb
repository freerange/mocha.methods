def expects(symbol, backtrace = nil)
  expectations << Expectation.new(symbol, backtrace)
  expectations.last
end
