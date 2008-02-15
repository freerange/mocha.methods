def mocha_inspect
  if required == 0 && infinite?(maximum)
    "allowed any number of times"
  else
    if required == 0 && maximum == 0
      "expected never"
    elsif required == maximum
      "expected exactly #{times(required)}"
    elsif infinite?(maximum)
      "expected at least #{times(required)}"
    elsif required == 0
      "expected at most #{times(maximum)}"
    else
      "expected between #{required} and #{times(maximum)}"
    end
  end
end
