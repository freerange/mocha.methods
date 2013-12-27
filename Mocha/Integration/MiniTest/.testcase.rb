def self.testcase
  if defined?(::Minitest::Test)
    ::Minitest::Test
  elsif defined?(::MiniTest::Unit::TestCase)
    ::MiniTest::Unit::TestCase
  else
    nil
  end
end
