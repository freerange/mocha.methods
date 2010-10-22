def self.included(mod)
  $stderr.puts "Monkey patching MiniTest v1.3" if $options['debug']
end
