def total_cost
  line_items.inject(0) { |total, line_item| total + line_item.price } + shipping_cost
end
