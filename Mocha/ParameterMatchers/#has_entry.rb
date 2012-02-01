def has_entry(*options)
  key, value = options.shift, options.shift
  if key.is_a?(Hash)
    case key.length
    when 0
      raise ArgumentError.new("Argument has no entries.")
    when 1
      key, value = key.to_a.flatten
    else
      raise ArgumentError.new("Argument has multiple entries. Use Mocha::ParameterMatchers#has_entries instead.")
    end
  end
  HasEntry.new(key, value)
end
