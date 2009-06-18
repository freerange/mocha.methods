def run runner
  assertion_counter = AssertionCounter.new(self)
  result = '.'
  name = (self.respond_to?(:name) ? self.name : self.__name__)
  begin
    begin
      @passed = nil
      self.setup
      self.__send__ name
      mocha_verify(assertion_counter)
      @passed = true
    rescue Exception => e
      @passed = false
      result = runner.puke(self.class, name, Mocha::Integration::MiniTest.translate(e))
    ensure
      begin
        self.teardown
      rescue Exception => e
        result = runner.puke(self.class, name, Mocha::Integration::MiniTest.translate(e))
      end
    end
  ensure
    mocha_teardown
  end
  result
end
