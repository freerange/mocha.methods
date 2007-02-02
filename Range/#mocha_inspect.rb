def mocha_inspect
  if first.respond_to?(:to_f) and first.to_f.infinite? then
    return "at most #{last}"
  elsif last.respond_to?(:to_f) and last.to_f.infinite? then
    return "at least #{first}"
  else
    to_s
  end
end
