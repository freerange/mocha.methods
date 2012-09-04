def match?(actual_method_name)
  @expected_method_name == actual_method_name.to_sym
end
