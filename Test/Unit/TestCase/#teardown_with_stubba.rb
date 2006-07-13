def teardown_with_stubba
  $stubba.unstub_all
  $stubba = nil
end
