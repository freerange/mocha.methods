def self.applicable_to?(mini_test_version)
  Gem::Requirement.new('>= 2.11.0', '<= 2.11.1').satisfied_by?(mini_test_version)
end
