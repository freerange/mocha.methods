def mocha
  @mocha ||= Mocha::Mockery.instance.mock_impersonating(self)
end
