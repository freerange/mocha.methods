def self.included(mod)
  warn "Monkey patching Test::Unit gem >= v2.0.1 and <= v2.0.2" if $options['debug']
end
