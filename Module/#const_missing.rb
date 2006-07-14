def const_missing(symbol)
  mochas[symbol] ||= Mocha::MockClass.dup
end
