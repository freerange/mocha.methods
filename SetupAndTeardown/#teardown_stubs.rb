def teardown_stubs
  $stubba.unstub_all if $stubba
  $stubba = nil
end
