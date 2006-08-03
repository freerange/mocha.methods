def teardown_with_stubba
  return unless $stubba
  $stubba.unstub_all
  $stubba = nil
end
