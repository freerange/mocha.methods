def teardown_mocks
  mocks.each { |mock| mock.verify { add_assertion } }
  reset_mocks
end
