def verify
  yield(self) if block_given?
  unless (@count === @invoked) then
    failure = Test::Unit::AssertionFailedError.new("#{message}: expected calls: #{@count}, actual calls: #{@invoked}")
    failure.set_backtrace(backtrace)
    raise failure
  end
end
