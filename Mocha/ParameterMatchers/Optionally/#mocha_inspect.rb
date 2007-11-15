def mocha_inspect
  "optionally(#{@matchers.map { |matcher| matcher.mocha_inspect }.join(", ") })"
end
