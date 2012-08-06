def self.included(mod)
  $stderr.puts "Monkey patching MiniTest v3.3.0" if $mocha_options['debug']
end
