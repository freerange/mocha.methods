def next_invocation
  case @parameter_groups.length
  when 0; NoYields.new
  when 1; @parameter_groups.first
  else @parameter_groups.shift
  end
end
