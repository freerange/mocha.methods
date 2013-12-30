def initialize(mockery, name = nil, receiver = nil, &block)
  @mockery = mockery
  @name = name || DefaultName.new(self)
  @receiver = receiver || DefaultReceiver.new(self)
  @expectations = ExpectationList.new
  @everything_stubbed = false
  @responder = nil
  @unexpected_invocation = nil
  instance_eval(&block) if block
end
