def matching_expectations(method_name, *arguments)
  @expectations.select { |e| e.match?(method_name, *arguments) }
end
