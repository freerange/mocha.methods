def self.included(mod)
  warn "Monkey patching MiniTest v1.4.0" if $options['debug']
end
