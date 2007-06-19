def initialize(stub_everything = false, name = nil)
  @stub_everything = stub_everything
  @mock_name = name
  @expectations = []
  @responder = nil
  @final_expectation_called = false
end
