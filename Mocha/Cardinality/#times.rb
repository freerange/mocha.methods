def times(number)
  case number
    when 0 then "no times"
    when 1 then "once"
    when 2 then "twice"
    else "#{number} times"
  end
end
