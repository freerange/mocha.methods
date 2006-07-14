def verify
  unless (@count === @invoked) then
    raise Test::Unit::AssertionFailedError, "#{message}: expected calls: #{@count}, actual calls: #{@invoked}"
  end
end
