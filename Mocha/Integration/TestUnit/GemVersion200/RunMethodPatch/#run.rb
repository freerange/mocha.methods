def run(result)
  assertion_counter = AssertionCounter.new(self)
  begin
    @_result = result
    yield(Test::Unit::TestCase::STARTED, name)
    begin
      begin
        run_setup
        __send__(@method_name)
        mocha_verify(assertion_counter)
      rescue Mocha::ExpectationError => e
        add_failure(e.message, e.backtrace)
      rescue Exception
        @interrupted = true
        raise unless handle_exception($!)
      ensure
        begin
          run_teardown
        rescue Mocha::ExpectationError => e
          add_failure(e.message, e.backtrace)
        rescue Exception
          raise unless handle_exception($!)
        end
      end
    ensure
      mocha_teardown
    end
    result.add_run
    yield(Test::Unit::TestCase::FINISHED, name)
  ensure
    @_result = nil
  end
end
