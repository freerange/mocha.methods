def unstub(method_name)
  @expectations.remove_all_matching_method(method_name)
end
