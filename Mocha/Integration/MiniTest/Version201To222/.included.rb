def self.included(mod)
  $stderr.puts "Monkey patching MiniTest >= v2.0.1 <= v2.2.2" if $mocha_options['debug']
end
