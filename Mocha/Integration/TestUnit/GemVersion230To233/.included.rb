def self.included(mod)
  $stderr.puts "Monkey patching Test::Unit gem >= v2.3.0 and <= v2.3.3" if $options['debug']
end
