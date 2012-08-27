def self.included(mod)
  Mocha::ExpectationErrorFactory.exception_class = ::MiniTest::Assertion
end
