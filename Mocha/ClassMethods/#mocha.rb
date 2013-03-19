def mocha
  mocha, klass = nil, self
  while mocha.nil? && klass.respond_to?(:superclass)
    mocha = klass.instance_variable_defined?(:@mocha) ? klass.instance_variable_get(:@mocha) : nil
    klass = klass.superclass
  end
  mocha || @mocha = Mocha::Mockery.instance.mock_impersonating(self)
end
