def self.applicable_to?(mini_test_version)
  Gem::Requirement.new('1.4.1').satisfied_by?(mini_test_version)
end
