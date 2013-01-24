def matches?(available_parameters)
  parameter = available_parameters.shift
  return false unless parameter.respond_to?(:include?)

  if @items.size == 1
    return parameter.include?(@items.first)
  else
    includes_matchers = @items.map { |item| Includes.new(item) }
    AllOf.new(*includes_matchers).matches?([parameter])
  end
end
