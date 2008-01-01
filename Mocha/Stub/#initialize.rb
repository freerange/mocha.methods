def initialize(mock, method_name, backtrace = nil)
  super
  @cardinality = Cardinality.at_least(0)
end
