def teardown_mocks # :nodoc:
  mocks.each { |mock| mock.verify { add_assertion } }
  reset_mocks
end
