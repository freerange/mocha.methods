def initialize(*parameters)
  @matchers = parameters.map { |parameter| parameter.to_matcher }
end
