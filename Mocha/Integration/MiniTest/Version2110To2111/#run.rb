def run runner
  trap 'INFO' do
    time = runner.start_time ? Time.now - runner.start_time : 0
    warn "%s#%s %.2fs" % [self.class, self.__name__, time]
    runner.status $stderr
  end if ::MiniTest::Unit::TestCase::SUPPORTS_INFO_SIGNAL

  assertion_counter = AssertionCounter.new(self)
  result = ""
  begin
    begin
      @passed = nil
      self.before_setup
      self.setup
      self.after_setup
      self.run_test self.__name__
      mocha_verify(assertion_counter)
      result = "." unless io?
      @passed = true
    rescue *::MiniTest::Unit::TestCase::PASSTHROUGH_EXCEPTIONS
      raise
    rescue Exception => e
      @passed = false
      result = runner.puke self.class, self.__name__, Mocha::Integration::MiniTest.translate(e)
    ensure
      %w{ before_teardown teardown after_teardown }.each do |hook|
        begin
          self.send hook
        rescue *::MiniTest::Unit::TestCase::PASSTHROUGH_EXCEPTIONS
          raise
        rescue Exception => e
          result = runner.puke self.class, self.__name__, Mocha::Integration::MiniTest.translate(e)
        end
      end
      trap 'INFO', 'DEFAULT' if ::MiniTest::Unit::TestCase::SUPPORTS_INFO_SIGNAL
    end
  ensure
    mocha_teardown
  end
  result
end
