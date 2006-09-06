def self.included(base) # :nodoc:
  base.add_teardown_method(:teardown_mocks)
end
