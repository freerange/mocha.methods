def self.included(mod)
  $stderr.puts "Monkey patching MiniTest >= v2.3.0 <= v2.6.2" if $mocha_options['debug']
end
