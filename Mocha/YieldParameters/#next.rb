def next
  case @parameter_groups.size
  when 0, 1: @parameter_groups.first
  else @parameter_groups.shift
  end
end
