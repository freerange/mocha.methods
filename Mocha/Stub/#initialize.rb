def initialize(mock, method_name, backtrace = nil)
  super
  @expected_count = Range.at_least(0)
end
