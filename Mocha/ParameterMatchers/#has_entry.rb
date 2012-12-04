def has_entry(*options)
  case options.length
  when 1
    case options[0]
    when Hash
      case options[0].length
      when 0
        raise ArgumentError.new("Argument has no entries.")
      when 1
        key, value = options[0].first
      else
        raise ArgumentError.new("Argument has multiple entries. Use Mocha::ParameterMatchers#has_entries instead.")
      end
    else
      raise ArgumentError.new("Argument is not a Hash.")
    end
  when 2
    key, value = options
  else
    raise ArgumentError.new("Too many arguments; use either a single argument (must be a Hash) or two arguments (a key and a value).")
  end
  HasEntry.new(key, value)
end
