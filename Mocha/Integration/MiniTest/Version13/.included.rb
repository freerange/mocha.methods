def self.included(mod)
  $stderr.puts "Monkey patching MiniTest v1.3" if $mocha_options['debug']
end
