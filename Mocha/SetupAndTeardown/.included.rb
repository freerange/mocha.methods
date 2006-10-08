def self.included(base)
  base.add_setup_method(:setup_stubs)
  base.add_teardown_method(:teardown_stubs)
end
