def active?
  @state_machine.current_state != @state
end
