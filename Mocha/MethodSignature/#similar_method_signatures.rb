def similar_method_signatures
  @mock.similar_expectations(@method_name).collect { |expectation| expectation.method_signature }
end
