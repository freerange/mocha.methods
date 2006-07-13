def remove_outer_hash_braces!
  @params_string = @params_string.gsub(/^\{|\}$/, '') if @params.size == 1
end
