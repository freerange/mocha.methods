def mocha_inspect
  if @required.respond_to?(:infinite?) && @required.infinite?
    "at most #{@maximum}"
  elsif @maximum.respond_to?(:infinite?) && @maximum.infinite?
    "at least #{@required}"
  elsif @required == @maximum
    "#{@required}"
  else
    "#{@required}..#{@maximum}"
  end
end
