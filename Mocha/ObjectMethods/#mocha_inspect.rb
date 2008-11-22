def mocha_inspect
  address = self.__id__ * 2
  address += 0x100000000 if address < 0
  inspect =~ /#</ ? "#<#{self.class}:0x#{'%x' % address}>" : inspect
end
