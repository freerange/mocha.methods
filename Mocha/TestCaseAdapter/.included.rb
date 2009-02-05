def self.included(base)
  base.send(:alias_method, :run_before_mocha_test_case_adapter, :run)
  base.send(:remove_method, :run)
  if Mocha.test_unit_version == '2.0.0'
    base.send(:include, TestUnitGem::Version200::MonkeyPatch)
  elsif Mocha.test_unit_version >= '2.0.1'
    base.send(:include, TestUnitGem::Version201AndAbove::MonkeyPatch)
  elsif RUBY_VERSION < '1.8.6'
    base.send(:include, Ruby::Version185AndBelow::MonkeyPatch)
  else
    base.send(:include, Ruby::Version186AndAbove::MonkeyPatch)
  end
end
