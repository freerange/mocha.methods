def self.included(mod)
  $stderr.puts "Monkey patching MiniTest v2.0.0" if $options['debug']
end