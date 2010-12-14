def has_equivalent_query_string(uri)
  QueryStringMatches.new(uri)
end
