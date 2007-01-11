def build_mock_with_expectations(expectation_type = :expects, expectations = {}, name = nil) # :nodoc:
  stub_everything = (expectation_type == :stub_everything)
  expectation_type = :stubs if expectation_type == :stub_everything
  mock = Mocha::Mock.new(stub_everything, name)
  expectations.each do |method, result|
    mock.__send__(expectation_type, method).returns(result)
  end
  mocks << mock
  mock
end
