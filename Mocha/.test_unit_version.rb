def self.test_unit_version
  require 'test/unit/version'
  Test::Unit::VERSION
rescue LoadError
  '1.x'
end
