def next_invocation
  case @parameter_groups.length
    when 0 then NoYields.new
    when 1 then @parameter_groups.first
    else @parameter_groups.shift
  end
end
