def number_shipped_since(date)
  find_all.select { |order| order.shipped_on > date }.length
end
