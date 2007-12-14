def matches_method?(method_name)
  @expectations.any? { |expectation| expectation.matches_method?(method_name) }
end
