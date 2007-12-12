def has_entry(*options)
  key, value = options.shift, options.shift
  key, value = key.to_a[0][0..1] if key.is_a?(Hash)
  HasEntry.new(key, value)
end
