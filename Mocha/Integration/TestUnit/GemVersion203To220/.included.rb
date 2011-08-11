def self.included(mod)
  $stderr.puts "Monkey patching Test::Unit gem >= v2.0.3 and <= v2.2.0" if $options['debug']
end
