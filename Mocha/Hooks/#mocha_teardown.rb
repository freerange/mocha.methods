def mocha_teardown
  Mockery.instance.teardown
  Mockery.reset_instance
end
