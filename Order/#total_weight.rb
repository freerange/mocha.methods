def total_weight
  line_items.inject(0) { |total, line_item| total + line_item.weight }
end
