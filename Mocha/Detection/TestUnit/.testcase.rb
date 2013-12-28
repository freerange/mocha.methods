def self.testcase
  if defined?(::Test::Unit::TestCase) &&
    !(defined?(::MiniTest::Unit::TestCase) && (::Test::Unit::TestCase < ::MiniTest::Unit::TestCase)) &&
    !(defined?(::MiniTest::Spec) && (::Test::Unit::TestCase < ::MiniTest::Spec))
    ::Test::Unit::TestCase
  else
    nil
  end
end
