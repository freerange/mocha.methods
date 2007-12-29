def mocha_inspect # :nodoc:
  if @current_state
    "#{@name} is #{@current_state.mocha_inspect}"
  else
    "#{@name} has no current state"
  end
end
