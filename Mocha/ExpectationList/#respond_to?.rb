def respond_to?(method_name)
  @expectations.any? { |expectation| expectation.method_name == method_name }
end
