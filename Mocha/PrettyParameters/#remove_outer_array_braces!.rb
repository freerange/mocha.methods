def remove_outer_array_braces!
  @params_string = @params_string.gsub(/^\[|\]$/, '')
end
