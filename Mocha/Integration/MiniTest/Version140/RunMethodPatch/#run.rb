def run runner
  assertion_counter = AssertionCounter.new(self)
  result = '.'
  begin
    begin
      @passed = nil
      self.setup
      self.__send__ self.__name__
      mocha_verify(assertion_counter)
      @passed = true
    rescue Exception => e
      @passed = false
      result = runner.puke(self.class, self.__name__, Mocha::Integration::MiniTest.translate(e))
    ensure
      begin
        self.teardown
      rescue Exception => e
        result = runner.puke(self.class, self.__name__, Mocha::Integration::MiniTest.translate(e))
      end
    end
  ensure
    mocha_teardown
  end
  result
end
