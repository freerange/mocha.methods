def mocha_inspect
  "any_of(#{@matchers.map { |matcher| matcher.mocha_inspect }.join(", ") })"
end
