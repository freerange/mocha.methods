def similar_expectations
  @mock.expectations.select { |expectation| expectation.method_name == self.method_name }
end
