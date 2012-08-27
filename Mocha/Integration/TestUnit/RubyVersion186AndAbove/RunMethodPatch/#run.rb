def run(result)
  assertion_counter = AssertionCounter.new(self)
  yield(Test::Unit::TestCase::STARTED, name)
  @_result = result
  begin
    begin
      setup
      __send__(@method_name)
      mocha_verify(assertion_counter)
    rescue Mocha::ExpectationError => e
      add_failure(e.message, e.backtrace)
    rescue Test::Unit::AssertionFailedError => e
      add_failure(e.message, e.backtrace)
    rescue Exception
      raise if Test::Unit::TestCase::PASSTHROUGH_EXCEPTIONS.include? $!.class
      add_error($!)
    ensure
      begin
        teardown
      rescue Mocha::ExpectationError => e
        add_failure(e.message, e.backtrace)
      rescue Test::Unit::AssertionFailedError => e
        add_failure(e.message, e.backtrace)
      rescue Exception
        raise if Test::Unit::TestCase::PASSTHROUGH_EXCEPTIONS.include? $!.class
        add_error($!)
      end
    end
  ensure
    mocha_teardown
  end
  result.add_run
  yield(Test::Unit::TestCase::FINISHED, name)
end
