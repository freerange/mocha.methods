def warn_when(action, &block)
  change_config action, :warn, &block
end
