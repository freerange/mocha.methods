def stubs(symbol, backtrace = nil)
  expectations << Stub.new(symbol, backtrace)
  expectations.last
end
