def allow(action, &block)
  change_config action, :allow, &block
end
