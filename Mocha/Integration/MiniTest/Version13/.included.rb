def self.included(mod)
  warn "Monkey patching MiniTest v1.3" if $options['debug']
end
