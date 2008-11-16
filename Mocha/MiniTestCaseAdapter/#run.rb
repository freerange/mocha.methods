def run runner
  assertion_counter = AssertionCounter.new(runner)
  result = '.'
  begin
    begin
      @passed = nil
      self.setup
      self.__send__ self.name
      mocha_verify(assertion_counter)
      @passed = true
    rescue Exception => e
      @passed = false
      result = runner.puke(self.class, self.name, e)
    ensure
      begin
        self.teardown
      rescue Exception => e
        result = runner.puke(self.class, self.name, e)
      end
    end
  ensure
    mocha_teardown
  end
  result
end
