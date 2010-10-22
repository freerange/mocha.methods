def self.included(mod)
  $stderr.puts "Monkey patching MiniTest v1.4.0" if $options['debug']
end
