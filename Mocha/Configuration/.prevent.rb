def prevent(action, &block)
  change_config action, :prevent, &block
end
