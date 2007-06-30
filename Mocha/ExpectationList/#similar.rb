def similar(method_name)
  @expectations.select { |expectation| expectation.method_name == method_name }
end
