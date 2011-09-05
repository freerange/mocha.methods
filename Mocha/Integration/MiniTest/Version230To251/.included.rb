def self.included(mod)
  $stderr.puts "Monkey patching MiniTest >= v2.3.0 <= v2.5.1" if $options['debug']
end
