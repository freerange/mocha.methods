def unstub(method)
  if existing = stubba_methods.detect { |m| m.matches?(method) }
    existing.unstub
    stubba_methods.delete(existing)
  end
end
