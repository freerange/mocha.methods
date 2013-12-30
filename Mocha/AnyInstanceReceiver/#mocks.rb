def mocks
  klass, mocks = @klass, []
  while klass do
    mocks << klass.any_instance.mocha
    klass = klass.superclass
  end
  mocks
end
