def next
  case @values.length
    when 0
      nil
    when 1
      @values.first.evaluate
    else
      @values.shift.evaluate
  end
end
