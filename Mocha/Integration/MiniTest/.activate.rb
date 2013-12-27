def self.activate
  return false unless Detection::MiniTest.testcase
  mini_test_version = Gem::Version.new(Detection::MiniTest.version)

  Debug.puts "Detected MiniTest version: #{mini_test_version}"

  integration_module = [
    MiniTest::Adapter,
    MiniTest::Version2112To320,
    MiniTest::Version2110To2111,
    MiniTest::Version230To2101,
    MiniTest::Version201To222,
    MiniTest::Version200,
    MiniTest::Version142To172,
    MiniTest::Version141,
    MiniTest::Version140,
    MiniTest::Version13,
    MiniTest::Nothing
  ].detect { |m| m.applicable_to?(mini_test_version) }

  target = Detection::MiniTest.testcase
  unless target < integration_module
    Debug.puts "Applying #{integration_module.description}"
    target.send(:include, integration_module)
  end
  true
end
