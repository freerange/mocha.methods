def match(method_name, *arguments)
  matching_expectations(method_name, *arguments).first
end
