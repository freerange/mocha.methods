def initialize(stubbee, method)
  @stubbee = stubbee
  @original_method, @original_visibility = nil, nil
  @method = RUBY_VERSION < '1.9' ? method.to_s : method.to_sym
end
