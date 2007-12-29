def then(*parameters)
  if parameters.length == 1
    state = parameters.first
    add_side_effect(ChangeStateSideEffect.new(state))
  end
  self
end
