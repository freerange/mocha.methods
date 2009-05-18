def test_unit_testcase_defined?
  defined?(Test) && defined?(Test::Unit) && defined?(Test::Unit::TestCase)
end
