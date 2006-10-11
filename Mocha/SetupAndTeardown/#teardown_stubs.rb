def teardown_stubs
  if $stubba then
    $stubba.unstub_all
    $stubba = nil
  end
end
