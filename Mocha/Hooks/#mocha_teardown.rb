def mocha_teardown
  Mockery.teardown
ensure
  Mockery.reset_instance
end
