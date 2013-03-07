def mocha_teardown
  Mockery.teardown
  Mockery.reset_instance
end
