def next
  case @values.length
    when 0 then nil
    when 1 then @values.first.evaluate
    else @values.shift.evaluate
  end
end
