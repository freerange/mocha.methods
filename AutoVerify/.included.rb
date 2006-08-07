def self.included(base)
  base.add_teardown_method(:teardown_mocks)
end
