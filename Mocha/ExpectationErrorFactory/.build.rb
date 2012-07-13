def build(message = nil, backtrace = [])
  self.exception_class ||= ExpectationError
  exception = exception_class.new(message)
  filter = BacktraceFilter.new
  exception.set_backtrace(filter.filtered(backtrace))
  exception
end
