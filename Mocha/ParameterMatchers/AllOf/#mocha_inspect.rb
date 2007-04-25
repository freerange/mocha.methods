def mocha_inspect
  "all_of(#{@matchers.map { |matcher| matcher.mocha_inspect }.join(", ") })"
end
