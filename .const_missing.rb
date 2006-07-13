def const_missing(symbol)
  mochas[symbol] ||= MochaClass.dup
end
