def filtered_backtrace
  backtrace.reject { |location| Regexp.new(mocha_lib_directory).match(File.expand_path(location)) }
end
