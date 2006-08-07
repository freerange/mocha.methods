def mock(expectations = {})
  mock = Mocha::Mock.new
  expectations.each do |method, result|
    mock.expects(method).returns(result)
  end
  mocks << mock
  mock
end
