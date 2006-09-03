def unshipped_value
  find_all.inject(0) { |total, order| order.shipped_on ? total : total + order.total_cost }
end
