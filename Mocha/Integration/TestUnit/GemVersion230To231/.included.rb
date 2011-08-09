def self.included(mod)
  $stderr.puts "Monkey patching Test::Unit gem >= v2.0.3 and <= v2.0.9" if $options['debug']
end
