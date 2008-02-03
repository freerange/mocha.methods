def initialize
  @mocks = []
  $stubba = Mocha::Central.new
end
