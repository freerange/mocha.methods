def mocha # :nodoc:
  @mocha ||= Mocha::Mock.new(Mocha::Mock.impersonating(self))
end
