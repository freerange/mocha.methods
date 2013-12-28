def self.version
  version = '1.0.0'
  if testcase
    begin
      require 'test/unit/version'
    rescue LoadError
    end
    if defined?(::Test::Unit::VERSION)
      version = ::Test::Unit::VERSION
    end
  end
  version
end
