def mocha_teardown # :nodoc:
  Mockery.instance.teardown
  Mockery.reset_instance
end
