def monkey_patches
  patches = []
  if test_unit_testcase_defined? && !test_unit_testcase_inherits_from_miniunit_testcase?
    patches << 'mocha/monkey_patching/test_unit'
  end
  if mini_test_testcase_defined?
    patches << 'mocha/monkey_patching/mini_test'
  end
  patches
end
