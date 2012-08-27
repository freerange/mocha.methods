def self.applicable_to?(mini_test_version)
  Gem::Requirement.new('>= 3.3.0').satisfied_by?(mini_test_version)
end
