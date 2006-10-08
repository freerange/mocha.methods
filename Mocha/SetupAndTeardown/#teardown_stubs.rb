def teardown_stubs
  if $stubba then
    begin
      $stubba.verify_all { add_assertion }
    ensure
      $stubba.unstub_all
      $stubba = nil
    end
  end
end
