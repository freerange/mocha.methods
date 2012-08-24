def handle_mocha_expectation_error(e)
  return false unless e.is_a?(Mocha::ExpectationError)
  problem_occurred
  add_failure(e.message, e.backtrace)
  true
end
