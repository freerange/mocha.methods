def has_entry(*options)
  param_1 = options.shift
  if options.empty? && param_1.is_a?(Hash)
    case param_1.length
    when 0
      raise ArgumentError.new("Argument has no entries.")
    when 1
      key   = param_1.keys.first
      value = param_1[key]
    else
      raise ArgumentError.new("Argument has multiple entries. Use Mocha::ParameterMatchers#has_entries instead.")
    end
  elsif options.length == 1
    key   = param_1
    value = options.shift
  else
    raise ArgumentError.new("Wrong number of arguments.  has_entry takes either one parameter (must be a hash) or two parameters (any key and value).")
  end
  HasEntry.new(key, value)
end
