def pretty
  remove_outer_array_braces!
  remove_outer_hash_braces!
  @params_string
end
