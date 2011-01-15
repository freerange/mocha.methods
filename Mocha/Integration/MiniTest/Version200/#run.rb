def run runner
  trap 'INFO' do
    time = Time.now - runner.start_time
    warn "%s#%s %.2fs" % [self.class, self.__name__, time]
    runner.status $stderr
  end if ::MiniTest::Unit::TestCase::SUPPORTS_INFO_SIGNAL
  
  assertion_counter = AssertionCounter.new(self)
  result = ""
  begin
    begin
      @passed = nil
      self.setup
      self.__send__ self.__name__
      mocha_verify(assertion_counter)
      result = "." unless io?
      @passed = true
    rescue *::MiniTest::Unit::TestCase::PASSTHROUGH_EXCEPTIONS
      raise
    rescue Exception => e
      @passed = false
      result = runner.puke self.class, self.__name__, Mocha::Integration::MiniTest.translate(e)
    ensure
      begin
        self.teardown
      rescue *::MiniTest::Unit::TestCase::PASSTHROUGH_EXCEPTIONS
        raise
      rescue Exception => e
        result = runner.puke self.class, self.__name__, Mocha::Integration::MiniTest.translate(e)
      end
      trap 'INFO', 'DEFAULT' if ::MiniTest::Unit::TestCase::SUPPORTS_INFO_SIGNAL
    end
  ensure
    mocha_teardown
  end
  result
end
