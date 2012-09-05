def self.activate
  test_unit_version = begin
    load 'test/unit/version.rb'
    Gem::Version.new(::Test::Unit::VERSION)
  rescue LoadError
    Gem::Version.new('1.0.0')
  end

  ruby_version = Gem::Version.new(RUBY_VERSION.dup)

  debug_puts "Detected Ruby version: #{ruby_version}"
  debug_puts "Detected Test::Unit version: #{test_unit_version}"

  integration_module = [
    TestUnit::Adapter,
    TestUnit::GemVersion230To250,
    TestUnit::GemVersion203To220,
    TestUnit::GemVersion201To202,
    TestUnit::GemVersion200,
    TestUnit::RubyVersion186AndAbove,
    TestUnit::RubyVersion185AndBelow,
    TestUnit::Nothing
  ].detect { |m| m.applicable_to?(test_unit_version, ruby_version) }

  unless ::Test::Unit::TestCase < integration_module
    debug_puts "Applying #{integration_module.description}"
    ::Test::Unit::TestCase.send(:include, integration_module)
  end
end
