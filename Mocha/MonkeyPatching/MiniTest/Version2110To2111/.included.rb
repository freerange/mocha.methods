def self.included(mod)
  $stderr.puts "Monkey patching MiniTest >= v2.11.0 <= v2.11.1" if $mocha_options['debug']
end
