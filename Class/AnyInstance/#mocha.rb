def mocha
  @mocha ||= Mocha::Mock.new(Mocha::Mock.impersonating_any_instance_of(@stubba_object))
end
