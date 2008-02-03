def teardown
  if $stubba then
    $stubba.unstub_all
    $stubba = nil
  end
end
