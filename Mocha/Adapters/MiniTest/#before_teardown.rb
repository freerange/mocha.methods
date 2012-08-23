def before_teardown
  return unless passed?
  assertion_counter = AssertionCounter.new(self)
  mocha_verify(assertion_counter)
ensure
  super
end
