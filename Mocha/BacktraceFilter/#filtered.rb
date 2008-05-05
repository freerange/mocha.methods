def filtered(backtrace)
  backtrace.reject { |location| Regexp.new(@lib_directory).match(File.expand_path(location)) }
end
