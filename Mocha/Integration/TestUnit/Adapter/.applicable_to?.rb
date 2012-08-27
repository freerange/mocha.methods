def self.applicable_to?(test_unit_version, ruby_version)
  Gem::Requirement.new('>= 2.5.1').satisfied_by?(test_unit_version)
end
