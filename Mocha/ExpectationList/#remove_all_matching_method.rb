def remove_all_matching_method(method_name)
  @expectations.reject! { |expectation| expectation.matches_method?(method_name) }
end
