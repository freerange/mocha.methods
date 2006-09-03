def test_should_boldly_go
  dilithium = mock()
  dilithium.expects(:nuke).with(:anti_matter).at_least_once  # auto-verified at end of test
  enterprise = Enterprise.new(dilithium)
  enterprise.go(2)
end
