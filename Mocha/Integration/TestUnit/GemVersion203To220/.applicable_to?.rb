def self.applicable_to?(test_unit_version, ruby_version = nil)
  Gem::Requirement.new('>= 2.0.3', '<= 2.2.0').satisfied_by?(test_unit_version)
end
