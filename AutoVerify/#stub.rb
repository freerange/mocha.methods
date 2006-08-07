def stub(expectations = {})
  mock = Mocha::Mock.new
  expectations.each do |method, result|
    mock.stubs(method).returns(result)
  end
  mocks << mock
  mock
end
