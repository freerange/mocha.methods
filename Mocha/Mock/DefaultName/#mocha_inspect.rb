def mocha_inspect
  address = @mock.__id__ * 2
  address += 0x100000000 if address < 0
  "#<Mock:0x#{'%x' % address}>"
end
