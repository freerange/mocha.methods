def initialize(message = nil, backtrace = [])
  super(message)
  filter = BacktraceFilter.new
  set_backtrace(filter.filtered(backtrace))
end
