def mocha_inspect
  inspect =~ /#</ ? "#<#{self.class}:0x#{self.__id__.to_s(16)}>" : inspect
end
