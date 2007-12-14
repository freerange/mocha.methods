def similar(method_name)
  @expectations.select { |expectation| expectation.matches_method?(method_name) }
end
