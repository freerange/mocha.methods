def self.included(mod)
  $stderr.puts "Monkey patching MiniTest >= v2.0.1 <= v2.0.2" if $options['debug']
end