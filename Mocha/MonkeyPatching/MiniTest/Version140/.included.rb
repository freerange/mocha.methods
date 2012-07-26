def self.included(mod)
  $stderr.puts "Monkey patching MiniTest v1.4.0" if $mocha_options['debug']
end
