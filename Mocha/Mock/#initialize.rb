def initialize(name = nil)
  @mock_name = name
  @expectations = ExpectationList.new
  @everything_stubbed = false
  @responder = nil
end
