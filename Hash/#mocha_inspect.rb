def mocha_inspect
  "{#{collect { |key, value| "#{key.mocha_inspect} => #{value.mocha_inspect}" }.join(', ')}}"
end
