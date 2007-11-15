def to_matcher
  Mocha::ParameterMatchers::Equals.new(self)
end
