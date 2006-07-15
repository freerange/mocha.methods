def unstub_all
  while stubba_methods.size > 0
    method = stubba_methods.pop
    method.unstub
  end
end
