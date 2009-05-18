def test_unit_testcase_inherits_from_miniunit_testcase?
  test_unit_testcase_defined? && mini_unit_testcase_defined? && Test::Unit::TestCase.ancestors.include?(MiniTest::Unit::TestCase)
end
