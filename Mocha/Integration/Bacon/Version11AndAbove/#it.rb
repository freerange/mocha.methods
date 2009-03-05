def it(description)
  it_before_bacon(description) do
    assertion_counter = ::Mocha::Integration::Bacon::AssertionCounter.new(::Bacon::Counter)
    mocha_setup
    yield
    mocha_verify(assertion_counter)
    mocha_teardown
  end
end
