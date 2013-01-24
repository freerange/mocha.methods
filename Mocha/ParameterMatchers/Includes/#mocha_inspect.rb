def mocha_inspect
  repr = @items.map(&:mocha_inspect).join(', ')
  "includes(#{repr})"
end
