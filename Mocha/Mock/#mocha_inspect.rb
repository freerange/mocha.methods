def mocha_inspect
  if @reference
    if [Symbol, String].any? { |klass| @reference.is_a?(klass) }
      "#<Mock:#{@reference}>"
    else
      @reference.mocha_inspect
    end
  else
    address = self.__id__ * 2
    address += 0x100000000 if address < 0
    "#<Mock:0x#{'%x' % address}>"
  end
end
