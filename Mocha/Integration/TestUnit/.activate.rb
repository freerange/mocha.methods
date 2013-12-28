def self.activate
  return false unless Detection::TestUnit.testcase
  test_unit_version = Gem::Version.new(Detection::TestUnit.version)
  ruby_version = Gem::Version.new(RUBY_VERSION.dup)

  Debug.puts "Detected Ruby version: #{ruby_version}"
  Debug.puts "Detected Test::Unit version: #{test_unit_version}"

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
    Debug.puts "Applying #{integration_module.description}"
    ::Test::Unit::TestCase.send(:include, integration_module)
  end
  true
end
