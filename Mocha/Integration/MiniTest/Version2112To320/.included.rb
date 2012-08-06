def self.included(mod)
  $stderr.puts "Monkey patching MiniTest >= v2.11.2 <= v3.2.0" if $mocha_options['debug']
end
