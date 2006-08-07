def teardown_mocks
  mocks.each { |mock| mock.verify }
  reset_mocks
end
