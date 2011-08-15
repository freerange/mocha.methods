def self.included(mod)
  $stderr.puts "Monkey patching MiniTest >= v2.3.0 <= v2.4.0" if $options['debug']
end
