def run(result)
  assertion_counter = AssertionCounter.new(self)
  begin
    @internal_data.test_started
    @_result = result
    yield(Test::Unit::TestCase::STARTED, name)
    yield(Test::Unit::TestCase::STARTED_OBJECT, self)
    begin
      begin
        run_setup
        run_test
        run_cleanup
        mocha_verify(assertion_counter)
        add_pass
      rescue Mocha::ExpectationError => e
        add_failure(e.message, e.backtrace)
      rescue Exception
        @internal_data.interrupted
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
    @internal_data.test_finished
    result.add_run
    yield(Test::Unit::TestCase::FINISHED, name)
    yield(Test::Unit::TestCase::FINISHED_OBJECT, self)
  ensure
    # @_result = nil # For test-spec's after_all :<
  end
end
