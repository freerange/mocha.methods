def mocha_teardown
  begin
    teardown_mocks
  ensure
    teardown_stubs
  end
end
