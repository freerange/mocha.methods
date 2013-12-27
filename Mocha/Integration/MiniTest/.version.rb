def self.version
  if defined?(::MiniTest::Unit::VERSION)
    ::MiniTest::Unit::VERSION
  elsif defined?(::Minitest::VERSION)
    ::Minitest::VERSION
  else
    '0.0.0'
  end
end
