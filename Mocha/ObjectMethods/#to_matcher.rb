def to_matcher # :nodoc:
  Mocha::ParameterMatchers::Equals.new(self)
end
