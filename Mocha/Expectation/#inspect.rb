def inspect
  address = __id__ * 2
  address += 0x100000000 if address < 0
  "#<Expectation:0x#{'%x' % address} #{mocha_inspect} >"
end
