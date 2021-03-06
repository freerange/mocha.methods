def self.included(mod)
  mod.setup :mocha_setup, :before => :prepend

  mod.exception_handler(:handle_mocha_expectation_error)

  mod.cleanup :after => :append do
    assertion_counter = Integration::AssertionCounter.new(self)
    mocha_verify(assertion_counter)
  end

  mod.teardown :mocha_teardown, :after => :append
end
