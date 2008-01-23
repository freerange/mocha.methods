def initialize(reference = nil, &block)
  @reference = reference
  @expectations = ExpectationList.new
  @everything_stubbed = false
  @responder = nil
  instance_eval(&block) if block
end
