def self.included(mod)
  $stderr.puts "Monkey patching Test::Unit gem >= v2.3.0 and <= v2.3.1" if $options['debug']
end
