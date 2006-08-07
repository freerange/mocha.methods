def self.included(base)
  unless base.ancestors.include?(self) then
    base.add_teardown_method(:teardown_mocks)
  end
end
