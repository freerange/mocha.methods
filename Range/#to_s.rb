def to_s
  if first.to_f.infinite? then
    return "at most #{last}"
  elsif last.to_f.infinite? then
    return "at least #{first}"
  else
    __to_s__
  end
end
