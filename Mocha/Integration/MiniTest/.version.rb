def self.version
  if defined?(::Minitest)
    ::Minitest::VERSION
  elsif defined?(::MiniTest)
    ::MiniTest::Unit::VERSION
  else
    '0.0.0'
  end
end
