def self.included(mod)
  $stderr.puts "Monkey patching MiniTest >= v1.4.2" if $options['debug']
end
