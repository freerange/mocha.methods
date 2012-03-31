def mocha_inspect
  if @current_state
    "#{@name} is #{@current_state.mocha_inspect}"
  else
    "#{@name} has no current state"
  end
end
