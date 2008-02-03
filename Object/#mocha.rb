def mocha # :nodoc:
  @mocha ||= Mocha::Mock.impersonating(self)
end
