def initialize(message = nil, backtrace = []) # :nodoc:
  super(message)
  filter = BacktraceFilter.new
  set_backtrace(filter.filtered(backtrace))
end
