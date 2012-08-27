def self.applicable_to?(mini_test_version)
  Gem::Requirement.new('>= 2.11.2', '<= 3.2.0').satisfied_by?(mini_test_version)
end
