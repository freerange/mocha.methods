def self.included(mod)
  $stderr.puts "Monkey patching MiniTest >= v1.4.2 and <= v1.7.2" if $mocha_options['debug']
  unless mod.ancestors.include?(Mocha::API)
    mod.send(:include, Mocha::API)
  end
  unless mod.method_defined?(:run_before_mocha)
    mod.send(:alias_method, :run_before_mocha, :run)
    mod.send(:remove_method, :run)
    mod.send(:include, InstanceMethods)
  end
end
