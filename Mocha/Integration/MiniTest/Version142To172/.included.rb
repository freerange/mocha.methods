def self.included(mod)
  $stderr.puts "Monkey patching MiniTest >= v1.4.2 and <= v1.7.2" if $mocha_options['debug']
end
