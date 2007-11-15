def initialize(name = nil, &block)
  @mock_name = name
  @expectations = ExpectationList.new
  @everything_stubbed = false
  @responder = nil
  instance_eval(&block) if block
end
