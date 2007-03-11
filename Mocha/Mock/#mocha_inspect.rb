def mocha_inspect
  address = self.__id__ * 2
  address += 0x100000000 if address < 0
  @mock_name ? "#<Mock:#{@mock_name}>" : "#<Mock:0x#{'%x' % address}>"
end
