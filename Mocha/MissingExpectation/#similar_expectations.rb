def similar_expectations
  @expectations.select { |expectation| expectation.method_name == self.method_name }
end
