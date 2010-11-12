def unstub_all
  while stubba_methods.any? do
    unstub(stubba_methods.first)
  end
end
