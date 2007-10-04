def to_s
  "(#{PrettyParameters.new(@parameters).pretty})"
end
