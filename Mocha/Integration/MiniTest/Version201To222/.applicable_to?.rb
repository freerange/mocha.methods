def self.applicable_to?(mini_test_version)
  Gem::Requirement.new('>= 2.0.1', '<= 2.2.2').satisfied_by?(mini_test_version)
end
