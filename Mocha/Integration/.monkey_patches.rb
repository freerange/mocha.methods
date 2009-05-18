def monkey_patches
  patches = []
  if test_unit_testcase_defined? && !test_unit_testcase_inherits_from_miniunit_testcase?
    patches << 'mocha/integration/test_unit'
  end
  if mini_unit_testcase_defined?
    patches << 'mocha/integration/mini_test'
  end
  patches
end
