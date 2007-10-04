def unstub_all
  while stubba_methods.length > 0
    method = stubba_methods.pop
    method.unstub
  end
end
