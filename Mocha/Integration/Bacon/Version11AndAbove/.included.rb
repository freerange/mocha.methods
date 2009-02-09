def self.included(base)

  base.class_eval do
    alias :it_before_bacon :it
    def it(description)
      it_before_bacon(description) do
        assertion_counter = AssertionCounter.new(::Bacon::Counter)
        mocha_setup
        yield
        mocha_verify(assertion_counter)
        mocha_teardown
      end
    end
  end

end
