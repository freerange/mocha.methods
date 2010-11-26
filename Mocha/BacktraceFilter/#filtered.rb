def filtered(backtrace)
  backtrace.reject { |location| @path_pattern.match(File.expand_path(location)) }
end
