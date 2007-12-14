def matchers
  @expected_parameters.map { |parameter| parameter.to_matcher }
end
