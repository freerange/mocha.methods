def self.activate
  if [Integration::TestUnit, Integration::MiniTest].map(&:activate).none?
    Deprecation.warning("Test::Unit or MiniTest must be loaded *before* `require 'mocha/setup'`.")
    Deprecation.warning("If you're integrating with a test library other than Test::Unit or MiniTest, you should use `require 'mocha/api'` instead of `require 'mocha/setup'`.")
  end
end
