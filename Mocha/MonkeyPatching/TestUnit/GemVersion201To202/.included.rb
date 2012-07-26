def self.included(mod)
  $stderr.puts "Monkey patching Test::Unit gem >= v2.0.1 and <= v2.0.2" if $mocha_options['debug']
end
