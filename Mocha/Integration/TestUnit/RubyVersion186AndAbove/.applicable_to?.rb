def self.applicable_to?(test_unit_version, ruby_version)
  Gem::Requirement.new('<= 1.2.3').satisfied_by?(test_unit_version) && Gem::Requirement.new('>= 1.8.6').satisfied_by?(ruby_version)
end
