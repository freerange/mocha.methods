def match?(actual_method_name, *actual_parameters)
  @method_matcher.match?(actual_method_name) && @parameters_matcher.match?(actual_parameters) && in_correct_order?
end
