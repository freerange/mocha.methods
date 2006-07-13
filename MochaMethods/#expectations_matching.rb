def expectations_matching(method_names)
  expectations.select { |expectation| method_names.include?(expectation.method_name) }
end
