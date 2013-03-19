def mocha
  mocha, klass = nil, stubba_object
  while mocha.nil? && klass.respond_to?(:superclass)
    mocha = klass.any_instance.instance_variable_defined?(:@mocha) ? klass.any_instance.instance_variable_get(:@mocha) : nil
    klass = klass.superclass
  end
  mocha || @mocha = Mocha::Mockery.instance.mock_impersonating_any_instance_of(@stubba_object)
end
