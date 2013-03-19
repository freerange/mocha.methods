def mocha
  @mocha ||= Mocha::Mockery.instance.mock_impersonating_any_instance_of(@stubba_object)
end
