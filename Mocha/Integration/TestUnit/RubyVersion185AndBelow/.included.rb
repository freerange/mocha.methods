def self.included(mod)
  $stderr.puts "Monkey patching Test::Unit for Ruby <= v1.8.5" if $mocha_options['debug']
end
