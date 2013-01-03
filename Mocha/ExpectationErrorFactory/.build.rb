def build(message = nil, backtrace = [])
  exception = exception_class.new(message)
  filter = BacktraceFilter.new
  exception.set_backtrace(filter.filtered(backtrace))
  exception
end
