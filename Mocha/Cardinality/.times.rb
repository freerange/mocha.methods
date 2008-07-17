def times(range_or_count)
  case range_or_count
    when Range then new(range_or_count.first, range_or_count.last)
    else new(range_or_count, range_or_count)
  end
end
