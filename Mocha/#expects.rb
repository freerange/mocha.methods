def expects(symbol)
  raise Test::Unit::AssertionFailedError, "Cannot replace #{symbol} as #{@mocked} does not respond to it." unless @mocked.respond_to?(symbol)
  super
end
