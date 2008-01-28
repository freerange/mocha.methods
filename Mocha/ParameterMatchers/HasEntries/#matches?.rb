def matches?(available_parameters)
  parameter = available_parameters.shift
  has_entry_matchers = @entries.map { |key, value| HasEntry.new(key, value) }
  AllOf.new(*has_entry_matchers).matches?([parameter])
end
