def mocha_inspect
  item_descriptions = @items.map(&:mocha_inspect)
  "includes(#{item_descriptions.join(', ')})"
end
