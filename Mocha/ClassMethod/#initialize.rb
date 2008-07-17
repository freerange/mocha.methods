def initialize(stubbee, method)
  @stubbee = stubbee
  @method = RUBY_VERSION < '1.9' ? method.to_s : method.to_sym
end
