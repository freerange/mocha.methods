def mocha # :nodoc:
  @mocha ||= Mocha::Mockery.instance.mock_impersonating(self)
end
