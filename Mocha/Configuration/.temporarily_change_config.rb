def temporarily_change_config(action, new_value, &block) # :nodoc:
  original_value = configuration[action]
  configuration[action] = new_value
  yield
ensure
  configuration[action] = original_value
end
