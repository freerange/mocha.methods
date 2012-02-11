def initialize(mockery, name = nil, &block)
  @mockery = mockery
  @name = name || DefaultName.new(self)
  @expectations = ExpectationList.new
  @everything_stubbed = false
  @responder = nil
  instance_eval(&block) if block
end
