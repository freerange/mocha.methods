def expectations
  mocks.map { |mock| mock.expectations.to_a }.flatten
end
