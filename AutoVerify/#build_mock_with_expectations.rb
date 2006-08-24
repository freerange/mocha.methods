def build_mock_with_expectations(expectation_type = :expects, expectations = {})
  mock = Mocha::Mock.new
  expectations.each do |method, result|
    mock.send(expectation_type, method).returns(result)
  end
  mocks << mock
  mock
end
