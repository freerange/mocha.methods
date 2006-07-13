def stubs(symbol)
  expectations << Stub.new(symbol)
  expectations.last
end
