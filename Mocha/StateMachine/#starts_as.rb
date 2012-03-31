def starts_as(initial_state_name)
  become(initial_state_name)
  self
end
