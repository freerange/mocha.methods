def next_invocation
  case @parameter_groups.size
  when 0: NullYieldParameterGroup.new
  when 1: @parameter_groups.first
  else @parameter_groups.shift
  end
end
