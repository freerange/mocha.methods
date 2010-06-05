def self.included(mod)
  warn "Monkey patching Test::Unit for Ruby <= v1.8.5" if $options['debug']
end
