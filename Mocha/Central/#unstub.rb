def unstub(method)
  if stubba_methods.include?(method)
    method.unstub
    stubba_methods.delete(method)
  end
end
