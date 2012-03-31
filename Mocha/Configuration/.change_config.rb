def change_config(action, new_value, &block)
  if block_given?
    temporarily_change_config action, new_value, &block
  else
    configuration[action] = new_value
  end
end
